; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38550 () Bool)

(assert start!38550)

(declare-fun b_free!9079 () Bool)

(declare-fun b_next!9079 () Bool)

(assert (=> start!38550 (= b_free!9079 (not b_next!9079))))

(declare-fun tp!32360 () Bool)

(declare-fun b_and!16483 () Bool)

(assert (=> start!38550 (= tp!32360 b_and!16483)))

(declare-fun b!398278 () Bool)

(declare-fun res!228959 () Bool)

(declare-fun e!240724 () Bool)

(assert (=> b!398278 (=> (not res!228959) (not e!240724))))

(declare-datatypes ((array!23801 0))(
  ( (array!23802 (arr!11347 (Array (_ BitVec 32) (_ BitVec 64))) (size!11699 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23801)

(declare-datatypes ((List!6532 0))(
  ( (Nil!6529) (Cons!6528 (h!7384 (_ BitVec 64)) (t!11714 List!6532)) )
))
(declare-fun arrayNoDuplicates!0 (array!23801 (_ BitVec 32) List!6532) Bool)

(assert (=> b!398278 (= res!228959 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6529))))

(declare-fun b!398279 () Bool)

(declare-fun e!240730 () Bool)

(declare-datatypes ((V!14387 0))(
  ( (V!14388 (val!5025 Int)) )
))
(declare-datatypes ((tuple2!6574 0))(
  ( (tuple2!6575 (_1!3297 (_ BitVec 64)) (_2!3297 V!14387)) )
))
(declare-datatypes ((List!6533 0))(
  ( (Nil!6530) (Cons!6529 (h!7385 tuple2!6574) (t!11715 List!6533)) )
))
(declare-datatypes ((ListLongMap!5501 0))(
  ( (ListLongMap!5502 (toList!2766 List!6533)) )
))
(declare-fun call!27898 () ListLongMap!5501)

(declare-fun call!27899 () ListLongMap!5501)

(assert (=> b!398279 (= e!240730 (= call!27898 call!27899))))

(declare-fun minValue!515 () V!14387)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4637 0))(
  ( (ValueCellFull!4637 (v!7268 V!14387)) (EmptyCell!4637) )
))
(declare-datatypes ((array!23803 0))(
  ( (array!23804 (arr!11348 (Array (_ BitVec 32) ValueCell!4637)) (size!11700 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23803)

(declare-fun bm!27895 () Bool)

(declare-fun v!412 () V!14387)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14387)

(declare-fun lt!187425 () array!23801)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54500 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!985 (array!23801 array!23803 (_ BitVec 32) (_ BitVec 32) V!14387 V!14387 (_ BitVec 32) Int) ListLongMap!5501)

(assert (=> bm!27895 (= call!27898 (getCurrentListMapNoExtraKeys!985 (ite c!54500 _keys!709 lt!187425) (ite c!54500 _values!549 (array!23804 (store (arr!11348 _values!549) i!563 (ValueCellFull!4637 v!412)) (size!11700 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398280 () Bool)

(declare-fun res!228957 () Bool)

(assert (=> b!398280 (=> (not res!228957) (not e!240724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398280 (= res!228957 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16563 () Bool)

(declare-fun mapRes!16563 () Bool)

(declare-fun tp!32361 () Bool)

(declare-fun e!240725 () Bool)

(assert (=> mapNonEmpty!16563 (= mapRes!16563 (and tp!32361 e!240725))))

(declare-fun mapValue!16563 () ValueCell!4637)

(declare-fun mapRest!16563 () (Array (_ BitVec 32) ValueCell!4637))

(declare-fun mapKey!16563 () (_ BitVec 32))

(assert (=> mapNonEmpty!16563 (= (arr!11348 _values!549) (store mapRest!16563 mapKey!16563 mapValue!16563))))

(declare-fun b!398281 () Bool)

(declare-fun res!228956 () Bool)

(declare-fun e!240726 () Bool)

(assert (=> b!398281 (=> (not res!228956) (not e!240726))))

(assert (=> b!398281 (= res!228956 (arrayNoDuplicates!0 lt!187425 #b00000000000000000000000000000000 Nil!6529))))

(declare-fun b!398282 () Bool)

(declare-fun e!240729 () Bool)

(declare-fun e!240727 () Bool)

(assert (=> b!398282 (= e!240729 (and e!240727 mapRes!16563))))

(declare-fun condMapEmpty!16563 () Bool)

(declare-fun mapDefault!16563 () ValueCell!4637)

