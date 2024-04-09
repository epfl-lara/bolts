; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82370 () Bool)

(assert start!82370)

(declare-fun b_free!18609 () Bool)

(declare-fun b_next!18609 () Bool)

(assert (=> start!82370 (= b_free!18609 (not b_next!18609))))

(declare-fun tp!64797 () Bool)

(declare-fun b_and!30115 () Bool)

(assert (=> start!82370 (= tp!64797 b_and!30115)))

(declare-fun mapIsEmpty!33961 () Bool)

(declare-fun mapRes!33961 () Bool)

(assert (=> mapIsEmpty!33961 mapRes!33961))

(declare-fun b!959894 () Bool)

(declare-fun res!642653 () Bool)

(declare-fun e!541132 () Bool)

(assert (=> b!959894 (=> (not res!642653) (not e!541132))))

(declare-datatypes ((array!58749 0))(
  ( (array!58750 (arr!28244 (Array (_ BitVec 32) (_ BitVec 64))) (size!28724 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58749)

(declare-datatypes ((List!19766 0))(
  ( (Nil!19763) (Cons!19762 (h!20924 (_ BitVec 64)) (t!28137 List!19766)) )
))
(declare-fun arrayNoDuplicates!0 (array!58749 (_ BitVec 32) List!19766) Bool)

(assert (=> b!959894 (= res!642653 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19763))))

(declare-fun b!959895 () Bool)

(declare-fun e!541133 () Bool)

(declare-fun e!541129 () Bool)

(assert (=> b!959895 (= e!541133 (and e!541129 mapRes!33961))))

(declare-fun condMapEmpty!33961 () Bool)

(declare-datatypes ((V!33411 0))(
  ( (V!33412 (val!10711 Int)) )
))
(declare-datatypes ((ValueCell!10179 0))(
  ( (ValueCellFull!10179 (v!13268 V!33411)) (EmptyCell!10179) )
))
(declare-datatypes ((array!58751 0))(
  ( (array!58752 (arr!28245 (Array (_ BitVec 32) ValueCell!10179)) (size!28725 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58751)

(declare-fun mapDefault!33961 () ValueCell!10179)

(assert (=> b!959895 (= condMapEmpty!33961 (= (arr!28245 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10179)) mapDefault!33961)))))

(declare-fun res!642654 () Bool)

(assert (=> start!82370 (=> (not res!642654) (not e!541132))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82370 (= res!642654 (validMask!0 mask!2088))))

(assert (=> start!82370 e!541132))

(assert (=> start!82370 true))

(declare-fun tp_is_empty!21321 () Bool)

(assert (=> start!82370 tp_is_empty!21321))

(declare-fun array_inv!21835 (array!58749) Bool)

(assert (=> start!82370 (array_inv!21835 _keys!1668)))

(declare-fun array_inv!21836 (array!58751) Bool)

(assert (=> start!82370 (and (array_inv!21836 _values!1386) e!541133)))

(assert (=> start!82370 tp!64797))

(declare-fun b!959896 () Bool)

(declare-fun res!642650 () Bool)

(assert (=> b!959896 (=> (not res!642650) (not e!541132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58749 (_ BitVec 32)) Bool)

(assert (=> b!959896 (= res!642650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959897 () Bool)

(declare-fun res!642651 () Bool)

(assert (=> b!959897 (=> (not res!642651) (not e!541132))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959897 (= res!642651 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28724 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28724 _keys!1668))))))

(declare-fun b!959898 () Bool)

(declare-fun res!642649 () Bool)

(assert (=> b!959898 (=> (not res!642649) (not e!541132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959898 (= res!642649 (validKeyInArray!0 (select (arr!28244 _keys!1668) i!793)))))

(declare-fun b!959899 () Bool)

(declare-fun e!541131 () Bool)

(assert (=> b!959899 (= e!541131 tp_is_empty!21321)))

(declare-fun mapNonEmpty!33961 () Bool)

(declare-fun tp!64798 () Bool)

(assert (=> mapNonEmpty!33961 (= mapRes!33961 (and tp!64798 e!541131))))

(declare-fun mapRest!33961 () (Array (_ BitVec 32) ValueCell!10179))

(declare-fun mapKey!33961 () (_ BitVec 32))

(declare-fun mapValue!33961 () ValueCell!10179)

(assert (=> mapNonEmpty!33961 (= (arr!28245 _values!1386) (store mapRest!33961 mapKey!33961 mapValue!33961))))

(declare-fun b!959900 () Bool)

(declare-fun res!642652 () Bool)

(assert (=> b!959900 (=> (not res!642652) (not e!541132))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!959900 (= res!642652 (and (= (size!28725 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28724 _keys!1668) (size!28725 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959901 () Bool)

(assert (=> b!959901 (= e!541129 tp_is_empty!21321)))

(declare-fun b!959902 () Bool)

(assert (=> b!959902 (= e!541132 false)))

(declare-fun lt!430550 () Bool)

(declare-fun minValue!1328 () V!33411)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33411)

(declare-datatypes ((tuple2!13902 0))(
  ( (tuple2!13903 (_1!6961 (_ BitVec 64)) (_2!6961 V!33411)) )
))
(declare-datatypes ((List!19767 0))(
  ( (Nil!19764) (Cons!19763 (h!20925 tuple2!13902) (t!28138 List!19767)) )
))
(declare-datatypes ((ListLongMap!12613 0))(
  ( (ListLongMap!12614 (toList!6322 List!19767)) )
))
(declare-fun contains!5372 (ListLongMap!12613 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3507 (array!58749 array!58751 (_ BitVec 32) (_ BitVec 32) V!33411 V!33411 (_ BitVec 32) Int) ListLongMap!12613)

(assert (=> b!959902 (= lt!430550 (contains!5372 (getCurrentListMap!3507 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28244 _keys!1668) i!793)))))

(assert (= (and start!82370 res!642654) b!959900))

(assert (= (and b!959900 res!642652) b!959896))

(assert (= (and b!959896 res!642650) b!959894))

(assert (= (and b!959894 res!642653) b!959897))

(assert (= (and b!959897 res!642651) b!959898))

(assert (= (and b!959898 res!642649) b!959902))

(assert (= (and b!959895 condMapEmpty!33961) mapIsEmpty!33961))

(assert (= (and b!959895 (not condMapEmpty!33961)) mapNonEmpty!33961))

(get-info :version)

(assert (= (and mapNonEmpty!33961 ((_ is ValueCellFull!10179) mapValue!33961)) b!959899))

(assert (= (and b!959895 ((_ is ValueCellFull!10179) mapDefault!33961)) b!959901))

(assert (= start!82370 b!959895))

(declare-fun m!890345 () Bool)

(assert (=> b!959896 m!890345))

(declare-fun m!890347 () Bool)

(assert (=> mapNonEmpty!33961 m!890347))

(declare-fun m!890349 () Bool)

(assert (=> b!959902 m!890349))

(declare-fun m!890351 () Bool)

(assert (=> b!959902 m!890351))

(assert (=> b!959902 m!890349))

(assert (=> b!959902 m!890351))

(declare-fun m!890353 () Bool)

(assert (=> b!959902 m!890353))

(declare-fun m!890355 () Bool)

(assert (=> b!959894 m!890355))

(assert (=> b!959898 m!890351))

(assert (=> b!959898 m!890351))

(declare-fun m!890357 () Bool)

(assert (=> b!959898 m!890357))

(declare-fun m!890359 () Bool)

(assert (=> start!82370 m!890359))

(declare-fun m!890361 () Bool)

(assert (=> start!82370 m!890361))

(declare-fun m!890363 () Bool)

(assert (=> start!82370 m!890363))

(check-sat (not b!959894) (not mapNonEmpty!33961) (not start!82370) (not b!959902) b_and!30115 (not b!959896) (not b!959898) (not b_next!18609) tp_is_empty!21321)
(check-sat b_and!30115 (not b_next!18609))
