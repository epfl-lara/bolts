; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81888 () Bool)

(assert start!81888)

(declare-fun b_free!18355 () Bool)

(declare-fun b_next!18355 () Bool)

(assert (=> start!81888 (= b_free!18355 (not b_next!18355))))

(declare-fun tp!63765 () Bool)

(declare-fun b_and!29859 () Bool)

(assert (=> start!81888 (= tp!63765 b_and!29859)))

(declare-fun mapIsEmpty!33310 () Bool)

(declare-fun mapRes!33310 () Bool)

(assert (=> mapIsEmpty!33310 mapRes!33310))

(declare-fun b!954520 () Bool)

(declare-fun e!537800 () Bool)

(declare-fun tp_is_empty!20899 () Bool)

(assert (=> b!954520 (= e!537800 tp_is_empty!20899)))

(declare-fun b!954521 () Bool)

(declare-fun res!639303 () Bool)

(declare-fun e!537798 () Bool)

(assert (=> b!954521 (=> (not res!639303) (not e!537798))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57923 0))(
  ( (array!57924 (arr!27837 (Array (_ BitVec 32) (_ BitVec 64))) (size!28317 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57923)

(declare-datatypes ((V!32849 0))(
  ( (V!32850 (val!10500 Int)) )
))
(declare-datatypes ((ValueCell!9968 0))(
  ( (ValueCellFull!9968 (v!13055 V!32849)) (EmptyCell!9968) )
))
(declare-datatypes ((array!57925 0))(
  ( (array!57926 (arr!27838 (Array (_ BitVec 32) ValueCell!9968)) (size!28318 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57925)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954521 (= res!639303 (and (= (size!28318 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28317 _keys!1441) (size!28318 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954522 () Bool)

(declare-fun res!639304 () Bool)

(assert (=> b!954522 (=> (not res!639304) (not e!537798))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954522 (= res!639304 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28317 _keys!1441))))))

(declare-fun b!954523 () Bool)

(declare-fun e!537797 () Bool)

(assert (=> b!954523 (= e!537797 tp_is_empty!20899)))

(declare-fun res!639302 () Bool)

(assert (=> start!81888 (=> (not res!639302) (not e!537798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81888 (= res!639302 (validMask!0 mask!1823))))

(assert (=> start!81888 e!537798))

(assert (=> start!81888 true))

(assert (=> start!81888 tp_is_empty!20899))

(declare-fun array_inv!21555 (array!57923) Bool)

(assert (=> start!81888 (array_inv!21555 _keys!1441)))

(declare-fun e!537799 () Bool)

(declare-fun array_inv!21556 (array!57925) Bool)

(assert (=> start!81888 (and (array_inv!21556 _values!1197) e!537799)))

(assert (=> start!81888 tp!63765))

(declare-fun b!954524 () Bool)

(declare-fun res!639307 () Bool)

(assert (=> b!954524 (=> (not res!639307) (not e!537798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954524 (= res!639307 (validKeyInArray!0 (select (arr!27837 _keys!1441) i!735)))))

(declare-fun b!954525 () Bool)

(assert (=> b!954525 (= e!537798 false)))

(declare-fun zeroValue!1139 () V!32849)

(declare-fun lt!429871 () Bool)

(declare-fun minValue!1139 () V!32849)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13726 0))(
  ( (tuple2!13727 (_1!6873 (_ BitVec 64)) (_2!6873 V!32849)) )
))
(declare-datatypes ((List!19542 0))(
  ( (Nil!19539) (Cons!19538 (h!20700 tuple2!13726) (t!27911 List!19542)) )
))
(declare-datatypes ((ListLongMap!12437 0))(
  ( (ListLongMap!12438 (toList!6234 List!19542)) )
))
(declare-fun contains!5284 (ListLongMap!12437 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3419 (array!57923 array!57925 (_ BitVec 32) (_ BitVec 32) V!32849 V!32849 (_ BitVec 32) Int) ListLongMap!12437)

(assert (=> b!954525 (= lt!429871 (contains!5284 (getCurrentListMap!3419 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27837 _keys!1441) i!735)))))

(declare-fun b!954526 () Bool)

(declare-fun res!639305 () Bool)

(assert (=> b!954526 (=> (not res!639305) (not e!537798))))

(declare-datatypes ((List!19543 0))(
  ( (Nil!19540) (Cons!19539 (h!20701 (_ BitVec 64)) (t!27912 List!19543)) )
))
(declare-fun arrayNoDuplicates!0 (array!57923 (_ BitVec 32) List!19543) Bool)

(assert (=> b!954526 (= res!639305 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19540))))

(declare-fun b!954527 () Bool)

(assert (=> b!954527 (= e!537799 (and e!537797 mapRes!33310))))

(declare-fun condMapEmpty!33310 () Bool)

(declare-fun mapDefault!33310 () ValueCell!9968)

