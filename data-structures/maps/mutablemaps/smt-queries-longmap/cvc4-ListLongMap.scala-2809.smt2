; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40776 () Bool)

(assert start!40776)

(declare-fun b_free!10757 () Bool)

(declare-fun b_next!10757 () Bool)

(assert (=> start!40776 (= b_free!10757 (not b_next!10757))))

(declare-fun tp!38094 () Bool)

(declare-fun b_and!18819 () Bool)

(assert (=> start!40776 (= tp!38094 b_and!18819)))

(declare-fun b!451509 () Bool)

(declare-fun e!264470 () Bool)

(declare-fun tp_is_empty!12095 () Bool)

(assert (=> b!451509 (= e!264470 tp_is_empty!12095)))

(declare-fun b!451510 () Bool)

(declare-fun res!268916 () Bool)

(declare-fun e!264471 () Bool)

(assert (=> b!451510 (=> (not res!268916) (not e!264471))))

(declare-datatypes ((array!27959 0))(
  ( (array!27960 (arr!13421 (Array (_ BitVec 32) (_ BitVec 64))) (size!13773 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27959)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451510 (= res!268916 (or (= (select (arr!13421 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13421 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451511 () Bool)

(declare-fun res!268917 () Bool)

(declare-fun e!264473 () Bool)

(assert (=> b!451511 (=> (not res!268917) (not e!264473))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!451511 (= res!268917 (bvsle from!863 i!563))))

(declare-fun b!451512 () Bool)

(declare-fun e!264472 () Bool)

(assert (=> b!451512 (= e!264473 e!264472)))

(declare-fun res!268919 () Bool)

(assert (=> b!451512 (=> (not res!268919) (not e!264472))))

(assert (=> b!451512 (= res!268919 (= from!863 i!563))))

(declare-datatypes ((V!17231 0))(
  ( (V!17232 (val!6092 Int)) )
))
(declare-fun minValue!515 () V!17231)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5704 0))(
  ( (ValueCellFull!5704 (v!8347 V!17231)) (EmptyCell!5704) )
))
(declare-datatypes ((array!27961 0))(
  ( (array!27962 (arr!13422 (Array (_ BitVec 32) ValueCell!5704)) (size!13774 (_ BitVec 32))) )
))
(declare-fun lt!204956 () array!27961)

(declare-fun zeroValue!515 () V!17231)

(declare-datatypes ((tuple2!7958 0))(
  ( (tuple2!7959 (_1!3989 (_ BitVec 64)) (_2!3989 V!17231)) )
))
(declare-datatypes ((List!8064 0))(
  ( (Nil!8061) (Cons!8060 (h!8916 tuple2!7958) (t!13852 List!8064)) )
))
(declare-datatypes ((ListLongMap!6885 0))(
  ( (ListLongMap!6886 (toList!3458 List!8064)) )
))
(declare-fun lt!204960 () ListLongMap!6885)

(declare-fun lt!204958 () array!27959)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1635 (array!27959 array!27961 (_ BitVec 32) (_ BitVec 32) V!17231 V!17231 (_ BitVec 32) Int) ListLongMap!6885)

(assert (=> b!451512 (= lt!204960 (getCurrentListMapNoExtraKeys!1635 lt!204958 lt!204956 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17231)

(declare-fun _values!549 () array!27961)

(assert (=> b!451512 (= lt!204956 (array!27962 (store (arr!13422 _values!549) i!563 (ValueCellFull!5704 v!412)) (size!13774 _values!549)))))

(declare-fun lt!204959 () ListLongMap!6885)

(assert (=> b!451512 (= lt!204959 (getCurrentListMapNoExtraKeys!1635 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451513 () Bool)

(declare-fun e!264466 () Bool)

(assert (=> b!451513 (= e!264472 (not e!264466))))

(declare-fun res!268927 () Bool)

(assert (=> b!451513 (=> res!268927 e!264466)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451513 (= res!268927 (validKeyInArray!0 (select (arr!13421 _keys!709) from!863)))))

(declare-fun e!264469 () Bool)

(assert (=> b!451513 e!264469))

(declare-fun c!56009 () Bool)

(assert (=> b!451513 (= c!56009 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13157 0))(
  ( (Unit!13158) )
))
(declare-fun lt!204957 () Unit!13157)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!697 (array!27959 array!27961 (_ BitVec 32) (_ BitVec 32) V!17231 V!17231 (_ BitVec 32) (_ BitVec 64) V!17231 (_ BitVec 32) Int) Unit!13157)

(assert (=> b!451513 (= lt!204957 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!697 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!268926 () Bool)

(assert (=> start!40776 (=> (not res!268926) (not e!264471))))

(assert (=> start!40776 (= res!268926 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13773 _keys!709))))))

(assert (=> start!40776 e!264471))

(assert (=> start!40776 tp_is_empty!12095))

(assert (=> start!40776 tp!38094))

(assert (=> start!40776 true))

(declare-fun e!264467 () Bool)

(declare-fun array_inv!9716 (array!27961) Bool)

(assert (=> start!40776 (and (array_inv!9716 _values!549) e!264467)))

(declare-fun array_inv!9717 (array!27959) Bool)

(assert (=> start!40776 (array_inv!9717 _keys!709)))

(declare-fun b!451514 () Bool)

(declare-fun e!264468 () Bool)

(declare-fun mapRes!19779 () Bool)

(assert (=> b!451514 (= e!264467 (and e!264468 mapRes!19779))))

(declare-fun condMapEmpty!19779 () Bool)

(declare-fun mapDefault!19779 () ValueCell!5704)

