; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4150 () Bool)

(assert start!4150)

(declare-fun b_free!1057 () Bool)

(declare-fun b_next!1057 () Bool)

(assert (=> start!4150 (= b_free!1057 (not b_next!1057))))

(declare-fun tp!4590 () Bool)

(declare-fun b_and!1869 () Bool)

(assert (=> start!4150 (= tp!4590 b_and!1869)))

(declare-fun mapIsEmpty!1645 () Bool)

(declare-fun mapRes!1645 () Bool)

(assert (=> mapIsEmpty!1645 mapRes!1645))

(declare-fun b!31306 () Bool)

(declare-fun res!18940 () Bool)

(declare-fun e!20010 () Bool)

(assert (=> b!31306 (=> (not res!18940) (not e!20010))))

(declare-datatypes ((array!2029 0))(
  ( (array!2030 (arr!968 (Array (_ BitVec 32) (_ BitVec 64))) (size!1069 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2029)

(declare-datatypes ((List!793 0))(
  ( (Nil!790) (Cons!789 (h!1356 (_ BitVec 64)) (t!3488 List!793)) )
))
(declare-fun arrayNoDuplicates!0 (array!2029 (_ BitVec 32) List!793) Bool)

(assert (=> b!31306 (= res!18940 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!790))))

(declare-fun b!31307 () Bool)

(assert (=> b!31307 (= e!20010 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1707 0))(
  ( (V!1708 (val!732 Int)) )
))
(declare-datatypes ((ValueCell!506 0))(
  ( (ValueCellFull!506 (v!1821 V!1707)) (EmptyCell!506) )
))
(declare-datatypes ((array!2031 0))(
  ( (array!2032 (arr!969 (Array (_ BitVec 32) ValueCell!506)) (size!1070 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2031)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11556 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun zeroValue!1443 () V!1707)

(declare-fun minValue!1443 () V!1707)

(declare-datatypes ((tuple2!1190 0))(
  ( (tuple2!1191 (_1!605 (_ BitVec 64)) (_2!605 V!1707)) )
))
(declare-datatypes ((List!794 0))(
  ( (Nil!791) (Cons!790 (h!1357 tuple2!1190) (t!3489 List!794)) )
))
(declare-datatypes ((ListLongMap!771 0))(
  ( (ListLongMap!772 (toList!401 List!794)) )
))
(declare-fun contains!338 (ListLongMap!771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!226 (array!2029 array!2031 (_ BitVec 32) (_ BitVec 32) V!1707 V!1707 (_ BitVec 32) Int) ListLongMap!771)

(assert (=> b!31307 (= lt!11556 (contains!338 (getCurrentListMap!226 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!31309 () Bool)

(declare-fun e!20008 () Bool)

(declare-fun tp_is_empty!1411 () Bool)

(assert (=> b!31309 (= e!20008 tp_is_empty!1411)))

(declare-fun b!31310 () Bool)

(declare-fun e!20011 () Bool)

(assert (=> b!31310 (= e!20011 tp_is_empty!1411)))

(declare-fun mapNonEmpty!1645 () Bool)

(declare-fun tp!4591 () Bool)

(assert (=> mapNonEmpty!1645 (= mapRes!1645 (and tp!4591 e!20008))))

(declare-fun mapRest!1645 () (Array (_ BitVec 32) ValueCell!506))

(declare-fun mapValue!1645 () ValueCell!506)

(declare-fun mapKey!1645 () (_ BitVec 32))

(assert (=> mapNonEmpty!1645 (= (arr!969 _values!1501) (store mapRest!1645 mapKey!1645 mapValue!1645))))

(declare-fun b!31311 () Bool)

(declare-fun res!18942 () Bool)

(assert (=> b!31311 (=> (not res!18942) (not e!20010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2029 (_ BitVec 32)) Bool)

(assert (=> b!31311 (= res!18942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31312 () Bool)

(declare-fun res!18941 () Bool)

(assert (=> b!31312 (=> (not res!18941) (not e!20010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31312 (= res!18941 (validKeyInArray!0 k!1304))))

(declare-fun b!31313 () Bool)

(declare-fun res!18939 () Bool)

(assert (=> b!31313 (=> (not res!18939) (not e!20010))))

(assert (=> b!31313 (= res!18939 (and (= (size!1070 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1069 _keys!1833) (size!1070 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!18943 () Bool)

(assert (=> start!4150 (=> (not res!18943) (not e!20010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4150 (= res!18943 (validMask!0 mask!2294))))

(assert (=> start!4150 e!20010))

(assert (=> start!4150 true))

(assert (=> start!4150 tp!4590))

(declare-fun e!20009 () Bool)

(declare-fun array_inv!645 (array!2031) Bool)

(assert (=> start!4150 (and (array_inv!645 _values!1501) e!20009)))

(declare-fun array_inv!646 (array!2029) Bool)

(assert (=> start!4150 (array_inv!646 _keys!1833)))

(assert (=> start!4150 tp_is_empty!1411))

(declare-fun b!31308 () Bool)

(assert (=> b!31308 (= e!20009 (and e!20011 mapRes!1645))))

(declare-fun condMapEmpty!1645 () Bool)

(declare-fun mapDefault!1645 () ValueCell!506)

