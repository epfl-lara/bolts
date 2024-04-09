; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82758 () Bool)

(assert start!82758)

(declare-fun b_free!18863 () Bool)

(declare-fun b_next!18863 () Bool)

(assert (=> start!82758 (= b_free!18863 (not b_next!18863))))

(declare-fun tp!65709 () Bool)

(declare-fun b_and!30369 () Bool)

(assert (=> start!82758 (= tp!65709 b_and!30369)))

(declare-fun b!964742 () Bool)

(declare-fun e!543887 () Bool)

(declare-fun e!543885 () Bool)

(assert (=> b!964742 (= e!543887 (not e!543885))))

(declare-fun res!645891 () Bool)

(assert (=> b!964742 (=> res!645891 e!543885)))

(declare-datatypes ((array!59399 0))(
  ( (array!59400 (arr!28564 (Array (_ BitVec 32) (_ BitVec 64))) (size!29044 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59399)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964742 (= res!645891 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29044 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33869 0))(
  ( (V!33870 (val!10883 Int)) )
))
(declare-datatypes ((ValueCell!10351 0))(
  ( (ValueCellFull!10351 (v!13441 V!33869)) (EmptyCell!10351) )
))
(declare-datatypes ((array!59401 0))(
  ( (array!59402 (arr!28565 (Array (_ BitVec 32) ValueCell!10351)) (size!29045 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59401)

(declare-fun minValue!1342 () V!33869)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33869)

(declare-datatypes ((tuple2!14072 0))(
  ( (tuple2!14073 (_1!7046 (_ BitVec 64)) (_2!7046 V!33869)) )
))
(declare-datatypes ((List!19947 0))(
  ( (Nil!19944) (Cons!19943 (h!21105 tuple2!14072) (t!28318 List!19947)) )
))
(declare-datatypes ((ListLongMap!12783 0))(
  ( (ListLongMap!12784 (toList!6407 List!19947)) )
))
(declare-fun contains!5461 (ListLongMap!12783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3592 (array!59399 array!59401 (_ BitVec 32) (_ BitVec 32) V!33869 V!33869 (_ BitVec 32) Int) ListLongMap!12783)

(assert (=> b!964742 (contains!5461 (getCurrentListMap!3592 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28564 _keys!1686) i!803))))

(declare-datatypes ((Unit!32269 0))(
  ( (Unit!32270) )
))
(declare-fun lt!431124 () Unit!32269)

(declare-fun lemmaInListMapFromThenInFromMinusOne!41 (array!59399 array!59401 (_ BitVec 32) (_ BitVec 32) V!33869 V!33869 (_ BitVec 32) (_ BitVec 32) Int) Unit!32269)

(assert (=> b!964742 (= lt!431124 (lemmaInListMapFromThenInFromMinusOne!41 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964743 () Bool)

(declare-fun res!645888 () Bool)

(assert (=> b!964743 (=> (not res!645888) (not e!543887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59399 (_ BitVec 32)) Bool)

(assert (=> b!964743 (= res!645888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!645885 () Bool)

(assert (=> start!82758 (=> (not res!645885) (not e!543887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82758 (= res!645885 (validMask!0 mask!2110))))

(assert (=> start!82758 e!543887))

(assert (=> start!82758 true))

(declare-fun e!543886 () Bool)

(declare-fun array_inv!22029 (array!59401) Bool)

(assert (=> start!82758 (and (array_inv!22029 _values!1400) e!543886)))

(declare-fun array_inv!22030 (array!59399) Bool)

(assert (=> start!82758 (array_inv!22030 _keys!1686)))

(assert (=> start!82758 tp!65709))

(declare-fun tp_is_empty!21665 () Bool)

(assert (=> start!82758 tp_is_empty!21665))

(declare-fun b!964744 () Bool)

(declare-fun res!645886 () Bool)

(assert (=> b!964744 (=> (not res!645886) (not e!543887))))

(assert (=> b!964744 (= res!645886 (contains!5461 (getCurrentListMap!3592 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28564 _keys!1686) i!803)))))

(declare-fun b!964745 () Bool)

(declare-fun res!645893 () Bool)

(assert (=> b!964745 (=> (not res!645893) (not e!543887))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964745 (= res!645893 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29044 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29044 _keys!1686))))))

(declare-fun b!964746 () Bool)

(declare-fun res!645889 () Bool)

(assert (=> b!964746 (=> (not res!645889) (not e!543887))))

(assert (=> b!964746 (= res!645889 (and (= (size!29045 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29044 _keys!1686) (size!29045 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964747 () Bool)

(declare-fun e!543884 () Bool)

(assert (=> b!964747 (= e!543884 tp_is_empty!21665)))

(declare-fun b!964748 () Bool)

(declare-fun res!645887 () Bool)

(assert (=> b!964748 (=> (not res!645887) (not e!543887))))

(declare-datatypes ((List!19948 0))(
  ( (Nil!19945) (Cons!19944 (h!21106 (_ BitVec 64)) (t!28319 List!19948)) )
))
(declare-fun arrayNoDuplicates!0 (array!59399 (_ BitVec 32) List!19948) Bool)

(assert (=> b!964748 (= res!645887 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19945))))

(declare-fun b!964749 () Bool)

(declare-fun res!645892 () Bool)

(assert (=> b!964749 (=> (not res!645892) (not e!543887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964749 (= res!645892 (validKeyInArray!0 (select (arr!28564 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34492 () Bool)

(declare-fun mapRes!34492 () Bool)

(assert (=> mapIsEmpty!34492 mapRes!34492))

(declare-fun b!964750 () Bool)

(declare-fun e!543889 () Bool)

(assert (=> b!964750 (= e!543889 tp_is_empty!21665)))

(declare-fun mapNonEmpty!34492 () Bool)

(declare-fun tp!65710 () Bool)

(assert (=> mapNonEmpty!34492 (= mapRes!34492 (and tp!65710 e!543884))))

(declare-fun mapValue!34492 () ValueCell!10351)

(declare-fun mapKey!34492 () (_ BitVec 32))

(declare-fun mapRest!34492 () (Array (_ BitVec 32) ValueCell!10351))

(assert (=> mapNonEmpty!34492 (= (arr!28565 _values!1400) (store mapRest!34492 mapKey!34492 mapValue!34492))))

(declare-fun b!964751 () Bool)

(declare-fun res!645890 () Bool)

(assert (=> b!964751 (=> (not res!645890) (not e!543887))))

(assert (=> b!964751 (= res!645890 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964752 () Bool)

(assert (=> b!964752 (= e!543886 (and e!543889 mapRes!34492))))

(declare-fun condMapEmpty!34492 () Bool)

(declare-fun mapDefault!34492 () ValueCell!10351)

