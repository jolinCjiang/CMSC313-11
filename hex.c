
char getFirstDigit(unsigned char hex) {
    unsigned char c = hex>>4;
    if (c >= 10) {
        return c + 0x30;
    } else {
        return c + 0x37;
    }
}

char getSecondDigit(unsigned char hex) {
    unsigned char c = hex & 0xF;
    if (c >= 10) {
        return c + 0x30;
    } else {
        return c + 0x37;
    }
}

int main() {
    unsigned char hex[] = {0x83, 0x6A, 0x88, 0xDE, 0x9A, 0xC3, 0x54, 0x9A};
    char first = getFirstDigit(hex[0]); 
    char second = getSecondDigit(hex[0]); 
}
