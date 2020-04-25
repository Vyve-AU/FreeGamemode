-- Language in Game
GameLanguage = "br" -- CHANGE ONLY IF HAVE THIS LANGUAGE ;D br/es/de/us
Language = {
    ["br"] = {
        NO_STEAM = "Steam não detectada",
        CHECK_WHITELIST = "Verificando sua whitelist...",
        CHECK_BANLIST = "Checando lista de banimentos...",
        JOIN_PERMITTED = "Tudo encontrado, carregando seus dados...",
        BANNED = "Você está banido do servidor.",
        NO_WHITELIST = "tentou conectar sem whitelist",
        DONT_PERMITTED = "Você não está permitido para entrar no servidor. HEX:",
        AUTO_QUEUEWL = "Aguarde um minuto para ser removido da lista de não-whitelist."
    },
    ["us"] = {
        NO_STEAM = "No steam",
        CHECK_WHITELIST = "Checking your whitelist...",
        CHECK_BANLIST = "Checking if your account is banned...",
        JOIN_PERMITTED = "Loading server...",
        BANNED = "You are banned.",
        NO_WHITELIST = "tried connect without whitelist",
        DONT_PERMITTED = "Don't have permission to join in this server. HEX:",
        AUTO_QUEUEWL = "Wait a minute to remove from list non-whitelist."
    },
    ["es"] = { -- translation by @PokeSer
        NO_STEAM = "Steam no ha sido iniciado",
        CHECK_WHITELIST = "Verificando whitelist...",
        CHECK_BANLIST = "Verificando si tu cuenta está baneada...",
        JOIN_PERMITTED = "Cargando servidor...",
        BANNED = "Estás baneado del servidor.",
        NO_WHITELIST = "intentado conectar sin whitelist",
        DONT_PERMITTED = "No estás en la whitelist del servidor. HEX:",
        AUTO_QUEUEWL = "Espere un minuto para ser eliminado de la lista no whitelist."
    }, 
    ["de"] = { -- translation by @Naifen-Phoxidas
        NO_STEAM = "Sie haben kein Steam",
        CHECK_WHITELIST = "Inspiziere die Whitelist...",
        CHECK_BANLIST = "Inspiziere die Banlist...",
        JOIN_PERMITTED = "Betrete Server...",
        BANNED = "Ihr Account wurde gesperrt.",
        NO_WHITELIST = "Versuche beizutreten ohne Whitelist",
        DONT_PERMITTED = "Sie sind nicht auf der Whitelist. HEX:",
        AUTO_QUEUEWL = "Bitte warten. Sie werden von der non-whitelist entfernt."
    }
}

UsingLanguageUI = "br" -- CHANGE ONLY IF HAVE THIS LANGUAGE ;D br/es/de
UILanguage = {
    ["br"] = {
        ["_creator"] = {
            menu1 = {
                PARENTS = "Parentes",
                FATHER_FACE = "Rosto do pai",
                FATHER_COLOR = "Cor de pele do Pai",
                MOTHER_FACE = "Rosto da Mãe",
                MOTHER_COLOR = "Cor de Pele da Mãe",
                PREDOMINANT_FACE = "Predominancia de Rosto",
                PREDOMINANT_COLOR = "Predominancia de Cor",
                --- OTHER TAB
                EYES = "Olhos",
                EYES_SIZE = "Abertura do Olho",
                EYES_COLOR = "Cor dos Olhos",
                EYEBROWN = "Sobrancelhas",
                EYEBROWN_SIZE = "Densidade da sobrancelha",
                EYEBROWN_COLOR = "Cor das sobrancelhas",
                EYEBROWN_HEIGHT = "Altura da sobrancelha",
                EYEBROWN_WIDTH = "Largura da sobrancelha",
                --- OTHER TAB
                NOSE = "Nariz",
                NOSE_HEIGHT = "Largura do Nariz",
                NOSE_WIDTH = "Altura do Nariz",
                NOSE_LENGTH = "Comprimento do Nariz",
                NOSE_CAVITY = "Cavidade Nasal",
                NOSE_TIP = "Ponta do Nariz",
                NOSE_CURVATURE = "Curvatura do nariz",
                -- OTHER TAB 
                CHIN = "Queixo",
                CHIN_LENGTH = "Comprimento do Queixo",
                CHIN_POSITION = "Posição do Queixo",
                CHIN_WIDTH = "Largura do Queixo",
                CHIN_FORM = "Forma do queixo",
                JAW_WIDTH = "Largura da Mandibula",
                JAW_HEIGHT = "Altura da Mandibula",
                -- OTHER TAB 
                CHEEK = "Bochecha",
                CHEEK_HEIGHT = "Altura da Bochecha",
                CHEEK_WIDTH = "Largura da Bochecha",
                CHEEK_SIZE = "Tamanho da Bochecha",
                -- OTHER TAB 
                MOUTH = "Boca",
                LIPS = "Lábios",
                -- OTHER TAB 
                NECK = "Pescoço",
                NECK_SIZE = "Tamanho do pescoço",
            },
            menu2 = {
                FACE_MARKS = "Marcas",
                ASPECTS = "Aspecto",
                SKIN = "Pele",
                FRECKLES = "Sardas",
                -- OTHER TAB 
                HAIR = "Cabelo",
                HAIR_COLOR = "Cor do Cabelo",
                HAIR_HIGHLIGHTS = "Mechas",
                -- OTHER TAB 
                BEARDS = "Barba",
                BEARDS_COLOR = "Barba",
                -- OTHER TAB
                MAKEUP = "Maquiagem",
                MAKEUP_BLUSH = "Blush",
                MAKEUP_BLUSH_COLOR = "Cor do Blush",
                MAKEUP_LIPSTICK = "Batom",
                MAKEUP_LIPSTICK_COLOR = "Cor do Batom",
                -- OTHER TAB
                OLD_AGE = "Velhice",
                WRINKLES = "Rugas",
                DEGREE_WRINKLES = "Grau das Rugas",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_FUR = "Pelo Corporal",
                TORSO_FUR_COLOR = "Cor dos pelos",
                -- OTHER TAB
                BODY = "Corpo",
                BODY_MARKS = "Manchas no Corpo",
                BODY_MARKS_2 = "Manchas no Corpo 2",
            },
            menu3 = {
                NAME = "Nome",
                NAME_SURNAME = "Nome e Sobrenome",
                NAME_VALUE = "Claudete Silva",
                AGE = "Idade",
                -- OTHER TAB
                JACKET = "Jaqueta",
                JACKET_COAT = "Agasalho",
                JACKET_TEXTURE = "Textura",
                -- OTHER TAB
                SHIRT = "Camisa",
                T_SHIRT = "Camiseta",
                T_SHIRT_TEXTURE = "Textura",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_TEXTURE = "Textura",
                -- OTHER TAB
                LEGS = "Calça",
                LEGS_TEXTURE = "Textura",
                -- OTHER TAB
                FOOTS = "Sapatos",
                FOOTS_TEXTURE = "Textura",
                -- OTHER TAB
                ACESSORY = "Acessórios",
                ACESSORY_TEXTURE = "Textura",
            }
        },
        ["_inventory"] = {
            INVENTORY = "Inventário",
            ALL_ITEMS = "Todos",
            FOOD = "Comidas",
            DRINKS = "Bebidas",
            WEAPONS = "Armas",
            AMMO = "Municao",
            SHIRTS = "Camisas",
            UTILS = "Utilitários",

            VEHICLE = "Veículos",
            IDENTITY = "Identidade",

            QUANTITY = "Quantidade",
            USE = "Usar",
            SEND = "Enviar",
            DROP = "Dropar"
        }
    },
    ["es"] = { -- translation by @PokeSer
        ["_creator"] = {
            menu1 = {
                PARENTS = "Parientes",
                FATHER_FACE = "Cara del padre",
                FATHER_COLOR = "Color de la piel del padre",
                MOTHER_FACE = "Cara de la madre",
                MOTHER_COLOR = "Color de la piel de la madre",
                PREDOMINANT_FACE = "Predominio de cara",
                PREDOMINANT_COLOR = "Predominio de color",
                --- OTHER TAB
                EYES = "Ojos",
                EYES_SIZE = "Apertura de los ojos",
                EYES_COLOR = "Color de los ojos",
                EYEBROWN = "Cejas",
                EYEBROWN_SIZE = "Tamaño de las cejas",
                EYEBROWN_COLOR = "Color de las cejas",
                EYEBROWN_HEIGHT = "Altura de las cejas",
                EYEBROWN_WIDTH = "Ancho de las cejas",
                --- OTHER TAB
                NOSE = "Nariz",
                NOSE_HEIGHT = "Ancho de la nariz",
                NOSE_WIDTH = "Altura de la nariz",
                NOSE_LENGTH = "Longitud de la nariz",
                NOSE_CAVITY = "Cavidad nasal",
                NOSE_TIP = "Punta de la nariz",
                NOSE_CURVATURE = "Curvatura de la nariz",
                -- OTHER TAB 
                CHIN = "Barbilla",
                CHIN_LENGTH = "Longitud de la barbilla",
                CHIN_POSITION = "Posición de la barbilla",
                CHIN_WIDTH = "Ancho de la barbilla",
                CHIN_FORM = "Forma de la barbilla",
                JAW_WIDTH = "Ancho de la mandíbula",
                JAW_HEIGHT = "Altura de la mandíbula",
                -- OTHER TAB 
                CHEEK = "Mejilla",
                CHEEK_HEIGHT = "Altura de la mejilla",
                CHEEK_WIDTH = "Ancho de la mejilla",
                CHEEK_SIZE = "Tamaño de la mejilla",
                -- OTHER TAB 
                MOUTH = "Boca",
                LIPS = "Labios",
                -- OTHER TAB 
                NECK = "Cuello",
                NECK_SIZE = "Tamaño del cuello",
            },
            menu2 = {
                FACE_MARKS = "Marcas de la cara",
                ASPECTS = "Aspecto",
                SKIN = "Piel",
                FRECKLES = "Pecas",
                -- OTHER TAB 
                HAIR = "Pelo",
                HAIR_COLOR = "Color del pelo",
                HAIR_HIGHLIGHTS = "Mechas",
                -- OTHER TAB 
                BEARDS = "Barba",
                BEARDS_COLOR = "Color de la barba",
                -- OTHER TAB
                MAKEUP = "Maquillaje",
                MAKEUP_BLUSH = "Rubor del maquillaje",
                MAKEUP_BLUSH_COLOR = "Color de rubor",
                MAKEUP_LIPSTICK = "Pintalabios",
                MAKEUP_LIPSTICK_COLOR = "Color del pintalabios",
                -- OTHER TAB
                OLD_AGE = "Vejez",
                WRINKLES = "Arrugas",
                DEGREE_WRINKLES = "Grado de arrugas",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_FUR = "Pelo Corporal",
                TORSO_FUR_COLOR = "Color de los pelos",
                -- OTHER TAB
                BODY = "Cuerpo",
                BODY_MARKS = "Manchas del cuerpo",
                BODY_MARKS_2 = "Manchas del cuerpo 2",
            },
            menu3 = {
                NAME = "Nombre",
                NAME_SURNAME = "Nombre y apellidos",
                NAME_VALUE = "Claudete Silva",
                AGE = "Edad",
                -- OTHER TAB
                JACKET = "Chaqueta",
                JACKET_COAT = "Suéter",
                JACKET_TEXTURE = "Textura",
                -- OTHER TAB
                SHIRT = "Camisa",
                T_SHIRT = "Camiseta",
                T_SHIRT_TEXTURE = "Textura",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_TEXTURE = "Textura",
                -- OTHER TAB
                LEGS = "Pantalones",
                LEGS_TEXTURE = "Textura",
                -- OTHER TAB
                FOOTS = "Zapatos",
                FOOTS_TEXTURE = "Textura",
                -- OTHER TAB
                ACESSORY = "Accesorios",
                ACESSORY_TEXTURE = "Textura",
            }
        },
        ["_inventory"] = {
            INVENTORY = "Inventario",
            ALL_ITEMS = "Todos",
            FOOD = "Comidas",
            DRINKS = "Bebidas",
            WEAPONS = "Armas",
            AMMO = "Munición",
            SHIRTS = "Camisas",
            UTILS = "Utilidades",

            VEHICLE = "Vehículos",
            IDENTITY = "Identidad",

            QUANTITY = "Cantidad",
            USE = "Usar",
            SEND = "Dar",
            DROP = "Tirar"
        }
    },
    ["de"] = { -- translation by @Naifen-Phoxidas
        ["_creator"] = {
            menu1 = {
                PARENTS = "Eltern",
                FATHER_FACE = "Vaters Gesicht",
                FATHER_COLOR = "Vaters Hautfarbe",
                MOTHER_FACE = "Mutters Gesicht",
                MOTHER_COLOR = "Mutters Hautfarbe",
                PREDOMINANT_FACE = "GesichtszÃ¼ge",
                PREDOMINANT_COLOR = "GesichtszÃ¼ge Farbe",
                --- OTHER TAB
                EYES = "Augen",
                EYES_SIZE = "AugengrÃ¶sse",
                EYES_COLOR = "Augenfarbe",
                EYEBROWN = "Augenbrauen",
                EYEBROWN_SIZE = "Augenbrauendichte",
                EYEBROWN_COLOR = "Augenbrauenfarbe",
                EYEBROWN_HEIGHT = "AugenbrauenhÃ¶he",
                EYEBROWN_WIDTH = "Augenbrauenbreite",
                --- OTHER TAB
                NOSE = "Nase",
                NOSE_HEIGHT = "Nasenbreite",
                NOSE_WIDTH = "NasenhÃ¶he",
                NOSE_LENGTH = "NasenlÃ¤nge",
                NOSE_CAVITY = "Nasenloch",
                NOSE_TIP = "Nasenspitze",
                NOSE_CURVATURE = "NasenkrÃ¼mmung",
                -- OTHER TAB 
                CHIN = "Kinn",
                CHIN_LENGTH = "KinnlÃ¤nge",
                CHIN_POSITION = "Kinnposition",
                CHIN_WIDTH = "Kinnbreite",
                CHIN_FORM = "Kinnform",
                JAW_WIDTH = "Kieferbreite",
                JAW_HEIGHT = "KieferhÃ¶he",
                -- OTHER TAB 
                CHEEK = "Wange",
                CHEEK_HEIGHT = "WangenhÃ¶he",
                CHEEK_WIDTH = "Wangenbreite",
                CHEEK_SIZE = "WangengrÃ¶sse",
                -- OTHER TAB 
                MOUTH = "Mund",
                LIPS = "Lippen",
                -- OTHER TAB 
                NECK = "Hals",
                NECK_SIZE = "HalsgrÃ¶sse",
            },
            menu2 = {
                FACE_MARKS = "Flecken",
                ASPECTS = "Aspekt",
                SKIN = "Haut",
                FRECKLES = "Sommersprossen",
                -- OTHER TAB 
                HAIR = "Haare",
                HAIR_COLOR = "Haarfarbe",
                HAIR_HIGHLIGHTS = "Haar Highlights",
                -- OTHER TAB 
                BEARDS = "Bart",
                BEARDS_COLOR = "Bartfarbe",
                -- OTHER TAB
                MAKEUP = "Schminke",
                MAKEUP_BLUSH = "ErrÃ¶tungen",
                MAKEUP_BLUSH_COLOR = "ErrÃ¶tungsfarbe",
                MAKEUP_LIPSTICK = "Lippenstift",
                MAKEUP_LIPSTICK_COLOR = "Lippenstiftfarbe",
                -- OTHER TAB
                OLD_AGE = "Alter",
                WRINKLES = "Falten",
                DEGREE_WRINKLES = "Grad der Falten",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_FUR = "KÃ¶rperbehaarung",
                TORSO_FUR_COLOR = "KÃ¶rperbehaarungsfarbe",
                -- OTHER TAB
                BODY = "KÃ¶rper",
                BODY_MARKS = "KÃ¶rperflecken",
                BODY_MARKS_2 = "KÃ¶rperflecken 2",
            },
            menu3 = {
                NAME = "Name",
                NAME_SURNAME = "Vor-/Nachname",
                NAME_VALUE = "Max Mustermann",
                AGE = "Alter",
                -- OTHER TAB
                JACKET = "Jacke",
                JACKET_COAT = "Pullover",
                JACKET_TEXTURE = "Textur",
                -- OTHER TAB
                SHIRT = "Hemd",
                T_SHIRT = "T-Shirt",
                T_SHIRT_TEXTURE = "Textur",
                -- OTHER TAB
                TORSO = "Torso",
                TORSO_TEXTURE = "Textur",
                -- OTHER TAB
                LEGS = "Hosen",
                LEGS_TEXTURE = "Textur",
                -- OTHER TAB
                FOOTS = "Schuhe",
                FOOTS_TEXTURE = "Textur",
                -- OTHER TAB
                ACESSORY = "ZubehÃ¶r",
                ACESSORY_TEXTURE = "Textur",
            }
        },
        ["_inventory"] = {
            INVENTORY = "Inventar",
            ALL_ITEMS = "Alles",
            FOOD = "Essen",
            DRINKS = "Trinken",
            WEAPONS = "Waffen",
            AMMO = "Munition",
            SHIRTS = "Hemd",
            UTILS = "Utensilien",

            VEHICLE = "Fahrzeug",
            IDENTITY = "IdentitÃ¤t",

            QUANTITY = "Menge",
            USE = "Verwenden",
            SEND = "Geben",
            DROP = "Verwerfen"
        }
    }
}

