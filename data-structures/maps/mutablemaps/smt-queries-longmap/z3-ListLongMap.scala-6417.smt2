; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82328 () Bool)

(assert start!82328)

(declare-fun b_free!18573 () Bool)

(declare-fun b_next!18573 () Bool)

(assert (=> start!82328 (= b_free!18573 (not b_next!18573))))

(declare-fun tp!64681 () Bool)

(declare-fun b_and!30079 () Bool)

(assert (=> start!82328 (= tp!64681 b_and!30079)))

(declare-fun b!959332 () Bool)

(declare-fun res!642282 () Bool)

(declare-fun e!540814 () Bool)

(assert (=> b!959332 (=> (not res!642282) (not e!540814))))

(declare-datatypes ((array!58667 0))(
  ( (array!58668 (arr!28203 (Array (_ BitVec 32) (_ BitVec 64))) (size!28683 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58667)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959332 (= res!642282 (validKeyInArray!0 (select (arr!28203 _keys!1668) i!793)))))

(declare-fun b!959333 () Bool)

(declare-fun res!642279 () Bool)

(assert (=> b!959333 (=> (not res!642279) (not e!540814))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58667 (_ BitVec 32)) Bool)

(assert (=> b!959333 (= res!642279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959334 () Bool)

(declare-fun res!642280 () Bool)

(assert (=> b!959334 (=> (not res!642280) (not e!540814))))

(declare-datatypes ((List!19738 0))(
  ( (Nil!19735) (Cons!19734 (h!20896 (_ BitVec 64)) (t!28109 List!19738)) )
))
(declare-fun arrayNoDuplicates!0 (array!58667 (_ BitVec 32) List!19738) Bool)

(assert (=> b!959334 (= res!642280 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19735))))

(declare-fun b!959335 () Bool)

(declare-fun res!642276 () Bool)

(assert (=> b!959335 (=> (not res!642276) (not e!540814))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33355 0))(
  ( (V!33356 (val!10690 Int)) )
))
(declare-datatypes ((ValueCell!10158 0))(
  ( (ValueCellFull!10158 (v!13247 V!33355)) (EmptyCell!10158) )
))
(declare-datatypes ((array!58669 0))(
  ( (array!58670 (arr!28204 (Array (_ BitVec 32) ValueCell!10158)) (size!28684 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58669)

(assert (=> b!959335 (= res!642276 (and (= (size!28684 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28683 _keys!1668) (size!28684 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959336 () Bool)

(declare-fun e!540817 () Bool)

(declare-fun e!540818 () Bool)

(declare-fun mapRes!33898 () Bool)

(assert (=> b!959336 (= e!540817 (and e!540818 mapRes!33898))))

(declare-fun condMapEmpty!33898 () Bool)

(declare-fun mapDefault!33898 () ValueCell!10158)

(assert (=> b!959336 (= condMapEmpty!33898 (= (arr!28204 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10158)) mapDefault!33898)))))

(declare-fun res!642278 () Bool)

(assert (=> start!82328 (=> (not res!642278) (not e!540814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82328 (= res!642278 (validMask!0 mask!2088))))

(assert (=> start!82328 e!540814))

(assert (=> start!82328 true))

(declare-fun tp_is_empty!21279 () Bool)

(assert (=> start!82328 tp_is_empty!21279))

(declare-fun array_inv!21807 (array!58667) Bool)

(assert (=> start!82328 (array_inv!21807 _keys!1668)))

(declare-fun array_inv!21808 (array!58669) Bool)

(assert (=> start!82328 (and (array_inv!21808 _values!1386) e!540817)))

(assert (=> start!82328 tp!64681))

(declare-fun mapNonEmpty!33898 () Bool)

(declare-fun tp!64680 () Bool)

(declare-fun e!540816 () Bool)

(assert (=> mapNonEmpty!33898 (= mapRes!33898 (and tp!64680 e!540816))))

(declare-fun mapKey!33898 () (_ BitVec 32))

(declare-fun mapValue!33898 () ValueCell!10158)

(declare-fun mapRest!33898 () (Array (_ BitVec 32) ValueCell!10158))

(assert (=> mapNonEmpty!33898 (= (arr!28204 _values!1386) (store mapRest!33898 mapKey!33898 mapValue!33898))))

(declare-fun b!959337 () Bool)

(declare-fun res!642281 () Bool)

(assert (=> b!959337 (=> (not res!642281) (not e!540814))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959337 (= res!642281 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28683 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28683 _keys!1668))))))

(declare-fun b!959338 () Bool)

(declare-fun res!642277 () Bool)

(assert (=> b!959338 (=> (not res!642277) (not e!540814))))

(declare-fun minValue!1328 () V!33355)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33355)

(declare-datatypes ((tuple2!13874 0))(
  ( (tuple2!13875 (_1!6947 (_ BitVec 64)) (_2!6947 V!33355)) )
))
(declare-datatypes ((List!19739 0))(
  ( (Nil!19736) (Cons!19735 (h!20897 tuple2!13874) (t!28110 List!19739)) )
))
(declare-datatypes ((ListLongMap!12585 0))(
  ( (ListLongMap!12586 (toList!6308 List!19739)) )
))
(declare-fun contains!5361 (ListLongMap!12585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3493 (array!58667 array!58669 (_ BitVec 32) (_ BitVec 32) V!33355 V!33355 (_ BitVec 32) Int) ListLongMap!12585)

(assert (=> b!959338 (= res!642277 (contains!5361 (getCurrentListMap!3493 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28203 _keys!1668) i!793)))))

(declare-fun b!959339 () Bool)

(assert (=> b!959339 (= e!540818 tp_is_empty!21279)))

(declare-fun mapIsEmpty!33898 () Bool)

(assert (=> mapIsEmpty!33898 mapRes!33898))

(declare-fun b!959340 () Bool)

(assert (=> b!959340 (= e!540814 (not true))))

(assert (=> b!959340 (contains!5361 (getCurrentListMap!3493 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28203 _keys!1668) i!793))))

(declare-datatypes ((Unit!32167 0))(
  ( (Unit!32168) )
))
(declare-fun lt!430496 () Unit!32167)

(declare-fun lemmaInListMapFromThenInFromSmaller!13 (array!58667 array!58669 (_ BitVec 32) (_ BitVec 32) V!33355 V!33355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32167)

(assert (=> b!959340 (= lt!430496 (lemmaInListMapFromThenInFromSmaller!13 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!959341 () Bool)

(assert (=> b!959341 (= e!540816 tp_is_empty!21279)))

(assert (= (and start!82328 res!642278) b!959335))

(assert (= (and b!959335 res!642276) b!959333))

(assert (= (and b!959333 res!642279) b!959334))

(assert (= (and b!959334 res!642280) b!959337))

(assert (= (and b!959337 res!642281) b!959332))

(assert (= (and b!959332 res!642282) b!959338))

(assert (= (and b!959338 res!642277) b!959340))

(assert (= (and b!959336 condMapEmpty!33898) mapIsEmpty!33898))

(assert (= (and b!959336 (not condMapEmpty!33898)) mapNonEmpty!33898))

(get-info :version)

(assert (= (and mapNonEmpty!33898 ((_ is ValueCellFull!10158) mapValue!33898)) b!959341))

(assert (= (and b!959336 ((_ is ValueCellFull!10158) mapDefault!33898)) b!959339))

(assert (= start!82328 b!959336))

(declare-fun m!889925 () Bool)

(assert (=> b!959340 m!889925))

(declare-fun m!889927 () Bool)

(assert (=> b!959340 m!889927))

(assert (=> b!959340 m!889925))

(assert (=> b!959340 m!889927))

(declare-fun m!889929 () Bool)

(assert (=> b!959340 m!889929))

(declare-fun m!889931 () Bool)

(assert (=> b!959340 m!889931))

(declare-fun m!889933 () Bool)

(assert (=> start!82328 m!889933))

(declare-fun m!889935 () Bool)

(assert (=> start!82328 m!889935))

(declare-fun m!889937 () Bool)

(assert (=> start!82328 m!889937))

(declare-fun m!889939 () Bool)

(assert (=> b!959338 m!889939))

(assert (=> b!959338 m!889927))

(assert (=> b!959338 m!889939))

(assert (=> b!959338 m!889927))

(declare-fun m!889941 () Bool)

(assert (=> b!959338 m!889941))

(declare-fun m!889943 () Bool)

(assert (=> b!959333 m!889943))

(declare-fun m!889945 () Bool)

(assert (=> mapNonEmpty!33898 m!889945))

(declare-fun m!889947 () Bool)

(assert (=> b!959334 m!889947))

(assert (=> b!959332 m!889927))

(assert (=> b!959332 m!889927))

(declare-fun m!889949 () Bool)

(assert (=> b!959332 m!889949))

(check-sat (not b!959334) tp_is_empty!21279 (not b!959333) (not b_next!18573) (not mapNonEmpty!33898) (not b!959338) b_and!30079 (not b!959332) (not start!82328) (not b!959340))
(check-sat b_and!30079 (not b_next!18573))
