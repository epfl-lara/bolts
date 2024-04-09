; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77610 () Bool)

(assert start!77610)

(declare-fun b_free!16167 () Bool)

(declare-fun b_next!16167 () Bool)

(assert (=> start!77610 (= b_free!16167 (not b_next!16167))))

(declare-fun tp!56763 () Bool)

(declare-fun b_and!26551 () Bool)

(assert (=> start!77610 (= tp!56763 b_and!26551)))

(declare-fun b!903898 () Bool)

(declare-fun e!506517 () Bool)

(declare-fun tp_is_empty!18585 () Bool)

(assert (=> b!903898 (= e!506517 tp_is_empty!18585)))

(declare-fun b!903899 () Bool)

(declare-fun e!506515 () Bool)

(declare-fun e!506519 () Bool)

(assert (=> b!903899 (= e!506515 e!506519)))

(declare-fun res!609973 () Bool)

(assert (=> b!903899 (=> res!609973 e!506519)))

(declare-datatypes ((V!29745 0))(
  ( (V!29746 (val!9343 Int)) )
))
(declare-datatypes ((tuple2!12152 0))(
  ( (tuple2!12153 (_1!6086 (_ BitVec 64)) (_2!6086 V!29745)) )
))
(declare-datatypes ((List!18027 0))(
  ( (Nil!18024) (Cons!18023 (h!19169 tuple2!12152) (t!25418 List!18027)) )
))
(declare-datatypes ((ListLongMap!10863 0))(
  ( (ListLongMap!10864 (toList!5447 List!18027)) )
))
(declare-fun lt!408081 () ListLongMap!10863)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4460 (ListLongMap!10863 (_ BitVec 64)) Bool)

(assert (=> b!903899 (= res!609973 (not (contains!4460 lt!408081 k0!1033)))))

(declare-datatypes ((ValueCell!8811 0))(
  ( (ValueCellFull!8811 (v!11848 V!29745)) (EmptyCell!8811) )
))
(declare-datatypes ((array!53202 0))(
  ( (array!53203 (arr!25556 (Array (_ BitVec 32) ValueCell!8811)) (size!26016 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53202)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29745)

(declare-datatypes ((array!53204 0))(
  ( (array!53205 (arr!25557 (Array (_ BitVec 32) (_ BitVec 64))) (size!26017 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53204)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29745)

(declare-fun defaultEntry!1160 () Int)

(declare-fun getCurrentListMap!2684 (array!53204 array!53202 (_ BitVec 32) (_ BitVec 32) V!29745 V!29745 (_ BitVec 32) Int) ListLongMap!10863)

(assert (=> b!903899 (= lt!408081 (getCurrentListMap!2684 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!903900 () Bool)

(declare-fun res!609976 () Bool)

(declare-fun e!506513 () Bool)

(assert (=> b!903900 (=> (not res!609976) (not e!506513))))

(assert (=> b!903900 (= res!609976 (and (= (size!26016 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26017 _keys!1386) (size!26016 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903901 () Bool)

(assert (=> b!903901 (= e!506519 true)))

(declare-fun lt!408082 () V!29745)

(declare-fun apply!430 (ListLongMap!10863 (_ BitVec 64)) V!29745)

(assert (=> b!903901 (= lt!408082 (apply!430 lt!408081 k0!1033))))

(declare-fun b!903902 () Bool)

(declare-fun res!609971 () Bool)

(assert (=> b!903902 (=> (not res!609971) (not e!506513))))

(declare-datatypes ((List!18028 0))(
  ( (Nil!18025) (Cons!18024 (h!19170 (_ BitVec 64)) (t!25419 List!18028)) )
))
(declare-fun arrayNoDuplicates!0 (array!53204 (_ BitVec 32) List!18028) Bool)

(assert (=> b!903902 (= res!609971 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18025))))

(declare-fun b!903903 () Bool)

(declare-fun e!506518 () Bool)

(declare-fun e!506514 () Bool)

(declare-fun mapRes!29590 () Bool)

(assert (=> b!903903 (= e!506518 (and e!506514 mapRes!29590))))

(declare-fun condMapEmpty!29590 () Bool)

(declare-fun mapDefault!29590 () ValueCell!8811)

(assert (=> b!903903 (= condMapEmpty!29590 (= (arr!25556 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8811)) mapDefault!29590)))))

(declare-fun mapNonEmpty!29590 () Bool)

(declare-fun tp!56764 () Bool)

(assert (=> mapNonEmpty!29590 (= mapRes!29590 (and tp!56764 e!506517))))

(declare-fun mapRest!29590 () (Array (_ BitVec 32) ValueCell!8811))

(declare-fun mapValue!29590 () ValueCell!8811)

(declare-fun mapKey!29590 () (_ BitVec 32))

(assert (=> mapNonEmpty!29590 (= (arr!25556 _values!1152) (store mapRest!29590 mapKey!29590 mapValue!29590))))

(declare-fun b!903904 () Bool)

(declare-fun res!609974 () Bool)

(assert (=> b!903904 (=> (not res!609974) (not e!506513))))

(assert (=> b!903904 (= res!609974 (and (= (select (arr!25557 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!903897 () Bool)

(declare-fun res!609975 () Bool)

(assert (=> b!903897 (=> (not res!609975) (not e!506513))))

(assert (=> b!903897 (= res!609975 (contains!4460 (getCurrentListMap!2684 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!609972 () Bool)

(assert (=> start!77610 (=> (not res!609972) (not e!506513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77610 (= res!609972 (validMask!0 mask!1756))))

(assert (=> start!77610 e!506513))

(declare-fun array_inv!20002 (array!53202) Bool)

(assert (=> start!77610 (and (array_inv!20002 _values!1152) e!506518)))

(assert (=> start!77610 tp!56763))

(assert (=> start!77610 true))

(assert (=> start!77610 tp_is_empty!18585))

(declare-fun array_inv!20003 (array!53204) Bool)

(assert (=> start!77610 (array_inv!20003 _keys!1386)))

(declare-fun b!903905 () Bool)

(assert (=> b!903905 (= e!506514 tp_is_empty!18585)))

(declare-fun b!903906 () Bool)

(declare-fun res!609977 () Bool)

(assert (=> b!903906 (=> (not res!609977) (not e!506513))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903906 (= res!609977 (inRange!0 i!717 mask!1756))))

(declare-fun b!903907 () Bool)

(declare-fun res!609970 () Bool)

(assert (=> b!903907 (=> (not res!609970) (not e!506513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53204 (_ BitVec 32)) Bool)

(assert (=> b!903907 (= res!609970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29590 () Bool)

(assert (=> mapIsEmpty!29590 mapRes!29590))

(declare-fun b!903908 () Bool)

(assert (=> b!903908 (= e!506513 (not e!506515))))

(declare-fun res!609978 () Bool)

(assert (=> b!903908 (=> res!609978 e!506515)))

(assert (=> b!903908 (= res!609978 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26017 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903908 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30625 0))(
  ( (Unit!30626) )
))
(declare-fun lt!408083 () Unit!30625)

(declare-fun lemmaKeyInListMapIsInArray!175 (array!53204 array!53202 (_ BitVec 32) (_ BitVec 32) V!29745 V!29745 (_ BitVec 64) Int) Unit!30625)

(assert (=> b!903908 (= lt!408083 (lemmaKeyInListMapIsInArray!175 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (= (and start!77610 res!609972) b!903900))

(assert (= (and b!903900 res!609976) b!903907))

(assert (= (and b!903907 res!609970) b!903902))

(assert (= (and b!903902 res!609971) b!903897))

(assert (= (and b!903897 res!609975) b!903906))

(assert (= (and b!903906 res!609977) b!903904))

(assert (= (and b!903904 res!609974) b!903908))

(assert (= (and b!903908 (not res!609978)) b!903899))

(assert (= (and b!903899 (not res!609973)) b!903901))

(assert (= (and b!903903 condMapEmpty!29590) mapIsEmpty!29590))

(assert (= (and b!903903 (not condMapEmpty!29590)) mapNonEmpty!29590))

(get-info :version)

(assert (= (and mapNonEmpty!29590 ((_ is ValueCellFull!8811) mapValue!29590)) b!903898))

(assert (= (and b!903903 ((_ is ValueCellFull!8811) mapDefault!29590)) b!903905))

(assert (= start!77610 b!903903))

(declare-fun m!839561 () Bool)

(assert (=> b!903899 m!839561))

(declare-fun m!839563 () Bool)

(assert (=> b!903899 m!839563))

(declare-fun m!839565 () Bool)

(assert (=> b!903904 m!839565))

(declare-fun m!839567 () Bool)

(assert (=> b!903902 m!839567))

(declare-fun m!839569 () Bool)

(assert (=> b!903906 m!839569))

(declare-fun m!839571 () Bool)

(assert (=> mapNonEmpty!29590 m!839571))

(declare-fun m!839573 () Bool)

(assert (=> start!77610 m!839573))

(declare-fun m!839575 () Bool)

(assert (=> start!77610 m!839575))

(declare-fun m!839577 () Bool)

(assert (=> start!77610 m!839577))

(declare-fun m!839579 () Bool)

(assert (=> b!903908 m!839579))

(declare-fun m!839581 () Bool)

(assert (=> b!903908 m!839581))

(declare-fun m!839583 () Bool)

(assert (=> b!903897 m!839583))

(assert (=> b!903897 m!839583))

(declare-fun m!839585 () Bool)

(assert (=> b!903897 m!839585))

(declare-fun m!839587 () Bool)

(assert (=> b!903907 m!839587))

(declare-fun m!839589 () Bool)

(assert (=> b!903901 m!839589))

(check-sat (not b!903908) (not mapNonEmpty!29590) (not b!903897) (not b!903901) (not b!903899) (not b!903906) (not b!903907) (not b_next!16167) b_and!26551 tp_is_empty!18585 (not start!77610) (not b!903902))
(check-sat b_and!26551 (not b_next!16167))
