; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82112 () Bool)

(assert start!82112)

(declare-fun mapNonEmpty!33610 () Bool)

(declare-fun mapRes!33610 () Bool)

(declare-fun tp!64216 () Bool)

(declare-fun e!539348 () Bool)

(assert (=> mapNonEmpty!33610 (= mapRes!33610 (and tp!64216 e!539348))))

(declare-datatypes ((V!33107 0))(
  ( (V!33108 (val!10597 Int)) )
))
(declare-datatypes ((ValueCell!10065 0))(
  ( (ValueCellFull!10065 (v!13153 V!33107)) (EmptyCell!10065) )
))
(declare-datatypes ((array!58307 0))(
  ( (array!58308 (arr!28026 (Array (_ BitVec 32) ValueCell!10065)) (size!28506 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58307)

(declare-fun mapRest!33610 () (Array (_ BitVec 32) ValueCell!10065))

(declare-fun mapValue!33610 () ValueCell!10065)

(declare-fun mapKey!33610 () (_ BitVec 32))

(assert (=> mapNonEmpty!33610 (= (arr!28026 _values!1386) (store mapRest!33610 mapKey!33610 mapValue!33610))))

(declare-fun b!956919 () Bool)

(declare-fun res!640744 () Bool)

(declare-fun e!539349 () Bool)

(assert (=> b!956919 (=> (not res!640744) (not e!539349))))

(declare-datatypes ((array!58309 0))(
  ( (array!58310 (arr!28027 (Array (_ BitVec 32) (_ BitVec 64))) (size!28507 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58309)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58309 (_ BitVec 32)) Bool)

(assert (=> b!956919 (= res!640744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!956920 () Bool)

(declare-fun res!640742 () Bool)

(assert (=> b!956920 (=> (not res!640742) (not e!539349))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!956920 (= res!640742 (and (= (size!28506 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28507 _keys!1668) (size!28506 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!956921 () Bool)

(assert (=> b!956921 (= e!539349 (and (bvsle #b00000000000000000000000000000000 (size!28507 _keys!1668)) (bvsge (size!28507 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun b!956922 () Bool)

(declare-fun e!539345 () Bool)

(declare-fun tp_is_empty!21093 () Bool)

(assert (=> b!956922 (= e!539345 tp_is_empty!21093)))

(declare-fun res!640743 () Bool)

(assert (=> start!82112 (=> (not res!640743) (not e!539349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82112 (= res!640743 (validMask!0 mask!2088))))

(assert (=> start!82112 e!539349))

(assert (=> start!82112 true))

(declare-fun e!539346 () Bool)

(declare-fun array_inv!21689 (array!58307) Bool)

(assert (=> start!82112 (and (array_inv!21689 _values!1386) e!539346)))

(declare-fun array_inv!21690 (array!58309) Bool)

(assert (=> start!82112 (array_inv!21690 _keys!1668)))

(declare-fun mapIsEmpty!33610 () Bool)

(assert (=> mapIsEmpty!33610 mapRes!33610))

(declare-fun b!956923 () Bool)

(assert (=> b!956923 (= e!539348 tp_is_empty!21093)))

(declare-fun b!956924 () Bool)

(assert (=> b!956924 (= e!539346 (and e!539345 mapRes!33610))))

(declare-fun condMapEmpty!33610 () Bool)

(declare-fun mapDefault!33610 () ValueCell!10065)

(assert (=> b!956924 (= condMapEmpty!33610 (= (arr!28026 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10065)) mapDefault!33610)))))

(assert (= (and start!82112 res!640743) b!956920))

(assert (= (and b!956920 res!640742) b!956919))

(assert (= (and b!956919 res!640744) b!956921))

(assert (= (and b!956924 condMapEmpty!33610) mapIsEmpty!33610))

(assert (= (and b!956924 (not condMapEmpty!33610)) mapNonEmpty!33610))

(get-info :version)

(assert (= (and mapNonEmpty!33610 ((_ is ValueCellFull!10065) mapValue!33610)) b!956923))

(assert (= (and b!956924 ((_ is ValueCellFull!10065) mapDefault!33610)) b!956922))

(assert (= start!82112 b!956924))

(declare-fun m!888133 () Bool)

(assert (=> mapNonEmpty!33610 m!888133))

(declare-fun m!888135 () Bool)

(assert (=> b!956919 m!888135))

(declare-fun m!888137 () Bool)

(assert (=> start!82112 m!888137))

(declare-fun m!888139 () Bool)

(assert (=> start!82112 m!888139))

(declare-fun m!888141 () Bool)

(assert (=> start!82112 m!888141))

(check-sat (not b!956919) (not start!82112) (not mapNonEmpty!33610) tp_is_empty!21093)
(check-sat)
(get-model)

(declare-fun b!956951 () Bool)

(declare-fun e!539372 () Bool)

(declare-fun call!41711 () Bool)

(assert (=> b!956951 (= e!539372 call!41711)))

(declare-fun d!115803 () Bool)

(declare-fun res!640758 () Bool)

(declare-fun e!539371 () Bool)

(assert (=> d!115803 (=> res!640758 e!539371)))

(assert (=> d!115803 (= res!640758 (bvsge #b00000000000000000000000000000000 (size!28507 _keys!1668)))))

(assert (=> d!115803 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088) e!539371)))

(declare-fun b!956952 () Bool)

(declare-fun e!539373 () Bool)

(assert (=> b!956952 (= e!539373 call!41711)))

(declare-fun bm!41708 () Bool)

(assert (=> bm!41708 (= call!41711 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1668 mask!2088))))

(declare-fun b!956953 () Bool)

(assert (=> b!956953 (= e!539371 e!539372)))

(declare-fun c!99817 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956953 (= c!99817 (validKeyInArray!0 (select (arr!28027 _keys!1668) #b00000000000000000000000000000000)))))

(declare-fun b!956954 () Bool)

(assert (=> b!956954 (= e!539372 e!539373)))

(declare-fun lt!430223 () (_ BitVec 64))

(assert (=> b!956954 (= lt!430223 (select (arr!28027 _keys!1668) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32137 0))(
  ( (Unit!32138) )
))
(declare-fun lt!430224 () Unit!32137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58309 (_ BitVec 64) (_ BitVec 32)) Unit!32137)

(assert (=> b!956954 (= lt!430224 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1668 lt!430223 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!956954 (arrayContainsKey!0 _keys!1668 lt!430223 #b00000000000000000000000000000000)))

(declare-fun lt!430225 () Unit!32137)

(assert (=> b!956954 (= lt!430225 lt!430224)))

(declare-fun res!640759 () Bool)

(declare-datatypes ((SeekEntryResult!9178 0))(
  ( (MissingZero!9178 (index!39082 (_ BitVec 32))) (Found!9178 (index!39083 (_ BitVec 32))) (Intermediate!9178 (undefined!9990 Bool) (index!39084 (_ BitVec 32)) (x!82469 (_ BitVec 32))) (Undefined!9178) (MissingVacant!9178 (index!39085 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58309 (_ BitVec 32)) SeekEntryResult!9178)

(assert (=> b!956954 (= res!640759 (= (seekEntryOrOpen!0 (select (arr!28027 _keys!1668) #b00000000000000000000000000000000) _keys!1668 mask!2088) (Found!9178 #b00000000000000000000000000000000)))))

(assert (=> b!956954 (=> (not res!640759) (not e!539373))))

(assert (= (and d!115803 (not res!640758)) b!956953))

(assert (= (and b!956953 c!99817) b!956954))

(assert (= (and b!956953 (not c!99817)) b!956951))

(assert (= (and b!956954 res!640759) b!956952))

(assert (= (or b!956952 b!956951) bm!41708))

(declare-fun m!888153 () Bool)

(assert (=> bm!41708 m!888153))

(declare-fun m!888155 () Bool)

(assert (=> b!956953 m!888155))

(assert (=> b!956953 m!888155))

(declare-fun m!888157 () Bool)

(assert (=> b!956953 m!888157))

(assert (=> b!956954 m!888155))

(declare-fun m!888159 () Bool)

(assert (=> b!956954 m!888159))

(declare-fun m!888161 () Bool)

(assert (=> b!956954 m!888161))

(assert (=> b!956954 m!888155))

(declare-fun m!888163 () Bool)

(assert (=> b!956954 m!888163))

(assert (=> b!956919 d!115803))

(declare-fun d!115805 () Bool)

(assert (=> d!115805 (= (validMask!0 mask!2088) (and (or (= mask!2088 #b00000000000000000000000000000111) (= mask!2088 #b00000000000000000000000000001111) (= mask!2088 #b00000000000000000000000000011111) (= mask!2088 #b00000000000000000000000000111111) (= mask!2088 #b00000000000000000000000001111111) (= mask!2088 #b00000000000000000000000011111111) (= mask!2088 #b00000000000000000000000111111111) (= mask!2088 #b00000000000000000000001111111111) (= mask!2088 #b00000000000000000000011111111111) (= mask!2088 #b00000000000000000000111111111111) (= mask!2088 #b00000000000000000001111111111111) (= mask!2088 #b00000000000000000011111111111111) (= mask!2088 #b00000000000000000111111111111111) (= mask!2088 #b00000000000000001111111111111111) (= mask!2088 #b00000000000000011111111111111111) (= mask!2088 #b00000000000000111111111111111111) (= mask!2088 #b00000000000001111111111111111111) (= mask!2088 #b00000000000011111111111111111111) (= mask!2088 #b00000000000111111111111111111111) (= mask!2088 #b00000000001111111111111111111111) (= mask!2088 #b00000000011111111111111111111111) (= mask!2088 #b00000000111111111111111111111111) (= mask!2088 #b00000001111111111111111111111111) (= mask!2088 #b00000011111111111111111111111111) (= mask!2088 #b00000111111111111111111111111111) (= mask!2088 #b00001111111111111111111111111111) (= mask!2088 #b00011111111111111111111111111111) (= mask!2088 #b00111111111111111111111111111111)) (bvsle mask!2088 #b00111111111111111111111111111111)))))

(assert (=> start!82112 d!115805))

(declare-fun d!115807 () Bool)

(assert (=> d!115807 (= (array_inv!21689 _values!1386) (bvsge (size!28506 _values!1386) #b00000000000000000000000000000000))))

(assert (=> start!82112 d!115807))

(declare-fun d!115809 () Bool)

(assert (=> d!115809 (= (array_inv!21690 _keys!1668) (bvsge (size!28507 _keys!1668) #b00000000000000000000000000000000))))

(assert (=> start!82112 d!115809))

(declare-fun mapIsEmpty!33616 () Bool)

(declare-fun mapRes!33616 () Bool)

(assert (=> mapIsEmpty!33616 mapRes!33616))

(declare-fun condMapEmpty!33616 () Bool)

(declare-fun mapDefault!33616 () ValueCell!10065)

(assert (=> mapNonEmpty!33610 (= condMapEmpty!33616 (= mapRest!33610 ((as const (Array (_ BitVec 32) ValueCell!10065)) mapDefault!33616)))))

(declare-fun e!539379 () Bool)

(assert (=> mapNonEmpty!33610 (= tp!64216 (and e!539379 mapRes!33616))))

(declare-fun mapNonEmpty!33616 () Bool)

(declare-fun tp!64222 () Bool)

(declare-fun e!539378 () Bool)

(assert (=> mapNonEmpty!33616 (= mapRes!33616 (and tp!64222 e!539378))))

(declare-fun mapKey!33616 () (_ BitVec 32))

(declare-fun mapRest!33616 () (Array (_ BitVec 32) ValueCell!10065))

(declare-fun mapValue!33616 () ValueCell!10065)

(assert (=> mapNonEmpty!33616 (= mapRest!33610 (store mapRest!33616 mapKey!33616 mapValue!33616))))

(declare-fun b!956961 () Bool)

(assert (=> b!956961 (= e!539378 tp_is_empty!21093)))

(declare-fun b!956962 () Bool)

(assert (=> b!956962 (= e!539379 tp_is_empty!21093)))

(assert (= (and mapNonEmpty!33610 condMapEmpty!33616) mapIsEmpty!33616))

(assert (= (and mapNonEmpty!33610 (not condMapEmpty!33616)) mapNonEmpty!33616))

(assert (= (and mapNonEmpty!33616 ((_ is ValueCellFull!10065) mapValue!33616)) b!956961))

(assert (= (and mapNonEmpty!33610 ((_ is ValueCellFull!10065) mapDefault!33616)) b!956962))

(declare-fun m!888165 () Bool)

(assert (=> mapNonEmpty!33616 m!888165))

(check-sat (not mapNonEmpty!33616) tp_is_empty!21093 (not b!956954) (not b!956953) (not bm!41708))
(check-sat)
