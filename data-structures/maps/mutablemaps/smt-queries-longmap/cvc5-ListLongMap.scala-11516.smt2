; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134102 () Bool)

(assert start!134102)

(declare-fun b_free!32197 () Bool)

(declare-fun b_next!32197 () Bool)

(assert (=> start!134102 (= b_free!32197 (not b_next!32197))))

(declare-fun tp!113911 () Bool)

(declare-fun b_and!51851 () Bool)

(assert (=> start!134102 (= tp!113911 b_and!51851)))

(declare-fun b!1566786 () Bool)

(declare-fun res!1070925 () Bool)

(declare-fun e!873379 () Bool)

(assert (=> b!1566786 (=> (not res!1070925) (not e!873379))))

(declare-datatypes ((array!104617 0))(
  ( (array!104618 (arr!50489 (Array (_ BitVec 32) (_ BitVec 64))) (size!51040 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104617)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104617 (_ BitVec 32)) Bool)

(assert (=> b!1566786 (= res!1070925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566787 () Bool)

(declare-fun e!873375 () Bool)

(declare-fun tp_is_empty!38977 () Bool)

(assert (=> b!1566787 (= e!873375 tp_is_empty!38977)))

(declare-fun b!1566788 () Bool)

(declare-fun res!1070930 () Bool)

(assert (=> b!1566788 (=> (not res!1070930) (not e!873379))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566788 (= res!1070930 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51040 _keys!637)) (bvslt from!782 (size!51040 _keys!637))))))

(declare-fun mapNonEmpty!59865 () Bool)

(declare-fun mapRes!59865 () Bool)

(declare-fun tp!113910 () Bool)

(assert (=> mapNonEmpty!59865 (= mapRes!59865 (and tp!113910 e!873375))))

(declare-datatypes ((V!60177 0))(
  ( (V!60178 (val!19572 Int)) )
))
(declare-datatypes ((ValueCell!18458 0))(
  ( (ValueCellFull!18458 (v!22328 V!60177)) (EmptyCell!18458) )
))
(declare-fun mapValue!59865 () ValueCell!18458)

(declare-fun mapKey!59865 () (_ BitVec 32))

(declare-datatypes ((array!104619 0))(
  ( (array!104620 (arr!50490 (Array (_ BitVec 32) ValueCell!18458)) (size!51041 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104619)

(declare-fun mapRest!59865 () (Array (_ BitVec 32) ValueCell!18458))

(assert (=> mapNonEmpty!59865 (= (arr!50490 _values!487) (store mapRest!59865 mapKey!59865 mapValue!59865))))

(declare-fun b!1566789 () Bool)

(declare-fun res!1070926 () Bool)

(assert (=> b!1566789 (=> (not res!1070926) (not e!873379))))

(declare-datatypes ((List!36801 0))(
  ( (Nil!36798) (Cons!36797 (h!38245 (_ BitVec 64)) (t!51712 List!36801)) )
))
(declare-fun arrayNoDuplicates!0 (array!104617 (_ BitVec 32) List!36801) Bool)

(assert (=> b!1566789 (= res!1070926 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36798))))

(declare-fun b!1566790 () Bool)

(declare-fun e!873376 () Bool)

(assert (=> b!1566790 (= e!873379 e!873376)))

(declare-fun res!1070927 () Bool)

(assert (=> b!1566790 (=> (not res!1070927) (not e!873376))))

(declare-datatypes ((tuple2!25416 0))(
  ( (tuple2!25417 (_1!12718 (_ BitVec 64)) (_2!12718 V!60177)) )
))
(declare-datatypes ((List!36802 0))(
  ( (Nil!36799) (Cons!36798 (h!38246 tuple2!25416) (t!51713 List!36802)) )
))
(declare-datatypes ((ListLongMap!22863 0))(
  ( (ListLongMap!22864 (toList!11447 List!36802)) )
))
(declare-fun lt!672748 () ListLongMap!22863)

(declare-fun contains!10371 (ListLongMap!22863 (_ BitVec 64)) Bool)

(assert (=> b!1566790 (= res!1070927 (not (contains!10371 lt!672748 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60177)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60177)

(declare-fun getCurrentListMapNoExtraKeys!6786 (array!104617 array!104619 (_ BitVec 32) (_ BitVec 32) V!60177 V!60177 (_ BitVec 32) Int) ListLongMap!22863)

(assert (=> b!1566790 (= lt!672748 (getCurrentListMapNoExtraKeys!6786 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1566791 () Bool)

(assert (=> b!1566791 (= e!873376 false)))

(declare-fun lt!672749 () Bool)

(assert (=> b!1566791 (= lt!672749 (contains!10371 lt!672748 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566792 () Bool)

(declare-fun e!873377 () Bool)

(declare-fun e!873378 () Bool)

(assert (=> b!1566792 (= e!873377 (and e!873378 mapRes!59865))))

(declare-fun condMapEmpty!59865 () Bool)

(declare-fun mapDefault!59865 () ValueCell!18458)

