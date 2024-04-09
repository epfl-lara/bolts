; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82098 () Bool)

(assert start!82098)

(declare-fun mapNonEmpty!33598 () Bool)

(declare-fun mapRes!33598 () Bool)

(declare-fun tp!64204 () Bool)

(declare-fun e!539288 () Bool)

(assert (=> mapNonEmpty!33598 (= mapRes!33598 (and tp!64204 e!539288))))

(declare-fun mapKey!33598 () (_ BitVec 32))

(declare-datatypes ((V!33099 0))(
  ( (V!33100 (val!10594 Int)) )
))
(declare-datatypes ((ValueCell!10062 0))(
  ( (ValueCellFull!10062 (v!13150 V!33099)) (EmptyCell!10062) )
))
(declare-fun mapRest!33598 () (Array (_ BitVec 32) ValueCell!10062))

(declare-datatypes ((array!58295 0))(
  ( (array!58296 (arr!28021 (Array (_ BitVec 32) ValueCell!10062)) (size!28501 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58295)

(declare-fun mapValue!33598 () ValueCell!10062)

(assert (=> mapNonEmpty!33598 (= (arr!28021 _values!1386) (store mapRest!33598 mapKey!33598 mapValue!33598))))

(declare-fun b!956845 () Bool)

(declare-fun res!640709 () Bool)

(declare-fun e!539287 () Bool)

(assert (=> b!956845 (=> (not res!640709) (not e!539287))))

(declare-datatypes ((array!58297 0))(
  ( (array!58298 (arr!28022 (Array (_ BitVec 32) (_ BitVec 64))) (size!28502 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58297)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58297 (_ BitVec 32)) Bool)

(assert (=> b!956845 (= res!640709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!956846 () Bool)

(declare-fun res!640710 () Bool)

(assert (=> b!956846 (=> (not res!640710) (not e!539287))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!956846 (= res!640710 (and (= (size!28501 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28502 _keys!1668) (size!28501 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33598 () Bool)

(assert (=> mapIsEmpty!33598 mapRes!33598))

(declare-fun b!956848 () Bool)

(assert (=> b!956848 (= e!539287 (bvsgt #b00000000000000000000000000000000 (size!28502 _keys!1668)))))

(declare-fun b!956849 () Bool)

(declare-fun e!539285 () Bool)

(declare-fun e!539289 () Bool)

(assert (=> b!956849 (= e!539285 (and e!539289 mapRes!33598))))

(declare-fun condMapEmpty!33598 () Bool)

(declare-fun mapDefault!33598 () ValueCell!10062)

(assert (=> b!956849 (= condMapEmpty!33598 (= (arr!28021 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10062)) mapDefault!33598)))))

(declare-fun b!956850 () Bool)

(declare-fun tp_is_empty!21087 () Bool)

(assert (=> b!956850 (= e!539289 tp_is_empty!21087)))

(declare-fun b!956847 () Bool)

(assert (=> b!956847 (= e!539288 tp_is_empty!21087)))

(declare-fun res!640711 () Bool)

(assert (=> start!82098 (=> (not res!640711) (not e!539287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82098 (= res!640711 (validMask!0 mask!2088))))

(assert (=> start!82098 e!539287))

(assert (=> start!82098 true))

(declare-fun array_inv!21685 (array!58295) Bool)

(assert (=> start!82098 (and (array_inv!21685 _values!1386) e!539285)))

(declare-fun array_inv!21686 (array!58297) Bool)

(assert (=> start!82098 (array_inv!21686 _keys!1668)))

(assert (= (and start!82098 res!640711) b!956846))

(assert (= (and b!956846 res!640710) b!956845))

(assert (= (and b!956845 res!640709) b!956848))

(assert (= (and b!956849 condMapEmpty!33598) mapIsEmpty!33598))

(assert (= (and b!956849 (not condMapEmpty!33598)) mapNonEmpty!33598))

(get-info :version)

(assert (= (and mapNonEmpty!33598 ((_ is ValueCellFull!10062) mapValue!33598)) b!956847))

(assert (= (and b!956849 ((_ is ValueCellFull!10062) mapDefault!33598)) b!956850))

(assert (= start!82098 b!956849))

(declare-fun m!888089 () Bool)

(assert (=> mapNonEmpty!33598 m!888089))

(declare-fun m!888091 () Bool)

(assert (=> b!956845 m!888091))

(declare-fun m!888093 () Bool)

(assert (=> start!82098 m!888093))

(declare-fun m!888095 () Bool)

(assert (=> start!82098 m!888095))

(declare-fun m!888097 () Bool)

(assert (=> start!82098 m!888097))

(check-sat (not b!956845) (not start!82098) (not mapNonEmpty!33598) tp_is_empty!21087)
(check-sat)
(get-model)

(declare-fun b!956877 () Bool)

(declare-fun e!539313 () Bool)

(declare-fun call!41708 () Bool)

(assert (=> b!956877 (= e!539313 call!41708)))

(declare-fun b!956878 () Bool)

(declare-fun e!539312 () Bool)

(assert (=> b!956878 (= e!539312 call!41708)))

(declare-fun d!115793 () Bool)

(declare-fun res!640725 () Bool)

(declare-fun e!539311 () Bool)

(assert (=> d!115793 (=> res!640725 e!539311)))

(assert (=> d!115793 (= res!640725 (bvsge #b00000000000000000000000000000000 (size!28502 _keys!1668)))))

(assert (=> d!115793 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088) e!539311)))

(declare-fun b!956879 () Bool)

(assert (=> b!956879 (= e!539312 e!539313)))

(declare-fun lt!430216 () (_ BitVec 64))

(assert (=> b!956879 (= lt!430216 (select (arr!28022 _keys!1668) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32135 0))(
  ( (Unit!32136) )
))
(declare-fun lt!430215 () Unit!32135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58297 (_ BitVec 64) (_ BitVec 32)) Unit!32135)

(assert (=> b!956879 (= lt!430215 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1668 lt!430216 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!956879 (arrayContainsKey!0 _keys!1668 lt!430216 #b00000000000000000000000000000000)))

(declare-fun lt!430214 () Unit!32135)

(assert (=> b!956879 (= lt!430214 lt!430215)))

(declare-fun res!640726 () Bool)

(declare-datatypes ((SeekEntryResult!9177 0))(
  ( (MissingZero!9177 (index!39078 (_ BitVec 32))) (Found!9177 (index!39079 (_ BitVec 32))) (Intermediate!9177 (undefined!9989 Bool) (index!39080 (_ BitVec 32)) (x!82458 (_ BitVec 32))) (Undefined!9177) (MissingVacant!9177 (index!39081 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58297 (_ BitVec 32)) SeekEntryResult!9177)

(assert (=> b!956879 (= res!640726 (= (seekEntryOrOpen!0 (select (arr!28022 _keys!1668) #b00000000000000000000000000000000) _keys!1668 mask!2088) (Found!9177 #b00000000000000000000000000000000)))))

(assert (=> b!956879 (=> (not res!640726) (not e!539313))))

(declare-fun b!956880 () Bool)

(assert (=> b!956880 (= e!539311 e!539312)))

(declare-fun c!99814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956880 (= c!99814 (validKeyInArray!0 (select (arr!28022 _keys!1668) #b00000000000000000000000000000000)))))

(declare-fun bm!41705 () Bool)

(assert (=> bm!41705 (= call!41708 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1668 mask!2088))))

(assert (= (and d!115793 (not res!640725)) b!956880))

(assert (= (and b!956880 c!99814) b!956879))

(assert (= (and b!956880 (not c!99814)) b!956878))

(assert (= (and b!956879 res!640726) b!956877))

(assert (= (or b!956877 b!956878) bm!41705))

(declare-fun m!888109 () Bool)

(assert (=> b!956879 m!888109))

(declare-fun m!888111 () Bool)

(assert (=> b!956879 m!888111))

(declare-fun m!888113 () Bool)

(assert (=> b!956879 m!888113))

(assert (=> b!956879 m!888109))

(declare-fun m!888115 () Bool)

(assert (=> b!956879 m!888115))

(assert (=> b!956880 m!888109))

(assert (=> b!956880 m!888109))

(declare-fun m!888117 () Bool)

(assert (=> b!956880 m!888117))

(declare-fun m!888119 () Bool)

(assert (=> bm!41705 m!888119))

(assert (=> b!956845 d!115793))

(declare-fun d!115795 () Bool)

(assert (=> d!115795 (= (validMask!0 mask!2088) (and (or (= mask!2088 #b00000000000000000000000000000111) (= mask!2088 #b00000000000000000000000000001111) (= mask!2088 #b00000000000000000000000000011111) (= mask!2088 #b00000000000000000000000000111111) (= mask!2088 #b00000000000000000000000001111111) (= mask!2088 #b00000000000000000000000011111111) (= mask!2088 #b00000000000000000000000111111111) (= mask!2088 #b00000000000000000000001111111111) (= mask!2088 #b00000000000000000000011111111111) (= mask!2088 #b00000000000000000000111111111111) (= mask!2088 #b00000000000000000001111111111111) (= mask!2088 #b00000000000000000011111111111111) (= mask!2088 #b00000000000000000111111111111111) (= mask!2088 #b00000000000000001111111111111111) (= mask!2088 #b00000000000000011111111111111111) (= mask!2088 #b00000000000000111111111111111111) (= mask!2088 #b00000000000001111111111111111111) (= mask!2088 #b00000000000011111111111111111111) (= mask!2088 #b00000000000111111111111111111111) (= mask!2088 #b00000000001111111111111111111111) (= mask!2088 #b00000000011111111111111111111111) (= mask!2088 #b00000000111111111111111111111111) (= mask!2088 #b00000001111111111111111111111111) (= mask!2088 #b00000011111111111111111111111111) (= mask!2088 #b00000111111111111111111111111111) (= mask!2088 #b00001111111111111111111111111111) (= mask!2088 #b00011111111111111111111111111111) (= mask!2088 #b00111111111111111111111111111111)) (bvsle mask!2088 #b00111111111111111111111111111111)))))

(assert (=> start!82098 d!115795))

(declare-fun d!115797 () Bool)

(assert (=> d!115797 (= (array_inv!21685 _values!1386) (bvsge (size!28501 _values!1386) #b00000000000000000000000000000000))))

(assert (=> start!82098 d!115797))

(declare-fun d!115799 () Bool)

(assert (=> d!115799 (= (array_inv!21686 _keys!1668) (bvsge (size!28502 _keys!1668) #b00000000000000000000000000000000))))

(assert (=> start!82098 d!115799))

(declare-fun b!956888 () Bool)

(declare-fun e!539319 () Bool)

(assert (=> b!956888 (= e!539319 tp_is_empty!21087)))

(declare-fun mapNonEmpty!33604 () Bool)

(declare-fun mapRes!33604 () Bool)

(declare-fun tp!64210 () Bool)

(declare-fun e!539318 () Bool)

(assert (=> mapNonEmpty!33604 (= mapRes!33604 (and tp!64210 e!539318))))

(declare-fun mapRest!33604 () (Array (_ BitVec 32) ValueCell!10062))

(declare-fun mapValue!33604 () ValueCell!10062)

(declare-fun mapKey!33604 () (_ BitVec 32))

(assert (=> mapNonEmpty!33604 (= mapRest!33598 (store mapRest!33604 mapKey!33604 mapValue!33604))))

(declare-fun condMapEmpty!33604 () Bool)

(declare-fun mapDefault!33604 () ValueCell!10062)

(assert (=> mapNonEmpty!33598 (= condMapEmpty!33604 (= mapRest!33598 ((as const (Array (_ BitVec 32) ValueCell!10062)) mapDefault!33604)))))

(assert (=> mapNonEmpty!33598 (= tp!64204 (and e!539319 mapRes!33604))))

(declare-fun mapIsEmpty!33604 () Bool)

(assert (=> mapIsEmpty!33604 mapRes!33604))

(declare-fun b!956887 () Bool)

(assert (=> b!956887 (= e!539318 tp_is_empty!21087)))

(assert (= (and mapNonEmpty!33598 condMapEmpty!33604) mapIsEmpty!33604))

(assert (= (and mapNonEmpty!33598 (not condMapEmpty!33604)) mapNonEmpty!33604))

(assert (= (and mapNonEmpty!33604 ((_ is ValueCellFull!10062) mapValue!33604)) b!956887))

(assert (= (and mapNonEmpty!33598 ((_ is ValueCellFull!10062) mapDefault!33604)) b!956888))

(declare-fun m!888121 () Bool)

(assert (=> mapNonEmpty!33604 m!888121))

(check-sat (not bm!41705) (not mapNonEmpty!33604) (not b!956880) (not b!956879) tp_is_empty!21087)
(check-sat)
