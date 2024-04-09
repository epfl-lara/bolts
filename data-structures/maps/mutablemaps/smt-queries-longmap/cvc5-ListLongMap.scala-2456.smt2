; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38562 () Bool)

(assert start!38562)

(declare-fun b_free!9091 () Bool)

(declare-fun b_next!9091 () Bool)

(assert (=> start!38562 (= b_free!9091 (not b_next!9091))))

(declare-fun tp!32396 () Bool)

(declare-fun b_and!16495 () Bool)

(assert (=> start!38562 (= tp!32396 b_and!16495)))

(declare-fun b!398584 () Bool)

(declare-fun res!229169 () Bool)

(declare-fun e!240852 () Bool)

(assert (=> b!398584 (=> (not res!229169) (not e!240852))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398584 (= res!229169 (validMask!0 mask!1025))))

(declare-fun b!398585 () Bool)

(declare-fun res!229170 () Bool)

(assert (=> b!398585 (=> (not res!229170) (not e!240852))))

(declare-datatypes ((array!23825 0))(
  ( (array!23826 (arr!11359 (Array (_ BitVec 32) (_ BitVec 64))) (size!11711 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23825)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398585 (= res!229170 (or (= (select (arr!11359 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11359 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!27931 () Bool)

(declare-datatypes ((V!14403 0))(
  ( (V!14404 (val!5031 Int)) )
))
(declare-fun minValue!515 () V!14403)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4643 0))(
  ( (ValueCellFull!4643 (v!7274 V!14403)) (EmptyCell!4643) )
))
(declare-datatypes ((array!23827 0))(
  ( (array!23828 (arr!11360 (Array (_ BitVec 32) ValueCell!4643)) (size!11712 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23827)

(declare-fun lt!187460 () array!23825)

(declare-fun v!412 () V!14403)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54518 () Bool)

(declare-datatypes ((tuple2!6586 0))(
  ( (tuple2!6587 (_1!3303 (_ BitVec 64)) (_2!3303 V!14403)) )
))
(declare-datatypes ((List!6543 0))(
  ( (Nil!6540) (Cons!6539 (h!7395 tuple2!6586) (t!11725 List!6543)) )
))
(declare-datatypes ((ListLongMap!5513 0))(
  ( (ListLongMap!5514 (toList!2772 List!6543)) )
))
(declare-fun call!27935 () ListLongMap!5513)

(declare-fun zeroValue!515 () V!14403)

(declare-fun getCurrentListMapNoExtraKeys!990 (array!23825 array!23827 (_ BitVec 32) (_ BitVec 32) V!14403 V!14403 (_ BitVec 32) Int) ListLongMap!5513)

(assert (=> bm!27931 (= call!27935 (getCurrentListMapNoExtraKeys!990 (ite c!54518 lt!187460 _keys!709) (ite c!54518 (array!23828 (store (arr!11360 _values!549) i!563 (ValueCellFull!4643 v!412)) (size!11712 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398586 () Bool)

(declare-fun e!240853 () Bool)

(declare-fun tp_is_empty!9973 () Bool)

(assert (=> b!398586 (= e!240853 tp_is_empty!9973)))

(declare-fun mapNonEmpty!16581 () Bool)

(declare-fun mapRes!16581 () Bool)

(declare-fun tp!32397 () Bool)

(declare-fun e!240856 () Bool)

(assert (=> mapNonEmpty!16581 (= mapRes!16581 (and tp!32397 e!240856))))

(declare-fun mapValue!16581 () ValueCell!4643)

(declare-fun mapRest!16581 () (Array (_ BitVec 32) ValueCell!4643))

(declare-fun mapKey!16581 () (_ BitVec 32))

(assert (=> mapNonEmpty!16581 (= (arr!11360 _values!549) (store mapRest!16581 mapKey!16581 mapValue!16581))))

(declare-fun mapIsEmpty!16581 () Bool)

(assert (=> mapIsEmpty!16581 mapRes!16581))

(declare-fun b!398587 () Bool)

(declare-fun res!229165 () Bool)

(assert (=> b!398587 (=> (not res!229165) (not e!240852))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398587 (= res!229165 (validKeyInArray!0 k!794))))

(declare-fun b!398588 () Bool)

(declare-fun res!229167 () Bool)

(declare-fun e!240854 () Bool)

(assert (=> b!398588 (=> (not res!229167) (not e!240854))))

(assert (=> b!398588 (= res!229167 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11711 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun e!240855 () Bool)

(declare-fun b!398589 () Bool)

(declare-fun call!27934 () ListLongMap!5513)

(declare-fun +!1067 (ListLongMap!5513 tuple2!6586) ListLongMap!5513)

(assert (=> b!398589 (= e!240855 (= call!27935 (+!1067 call!27934 (tuple2!6587 k!794 v!412))))))

(declare-fun b!398590 () Bool)

(declare-fun res!229175 () Bool)

(assert (=> b!398590 (=> (not res!229175) (not e!240852))))

(assert (=> b!398590 (= res!229175 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11711 _keys!709))))))

(declare-fun res!229173 () Bool)

(assert (=> start!38562 (=> (not res!229173) (not e!240852))))

(assert (=> start!38562 (= res!229173 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11711 _keys!709))))))

(assert (=> start!38562 e!240852))

(assert (=> start!38562 tp_is_empty!9973))

(assert (=> start!38562 tp!32396))

(assert (=> start!38562 true))

(declare-fun e!240850 () Bool)

(declare-fun array_inv!8314 (array!23827) Bool)

(assert (=> start!38562 (and (array_inv!8314 _values!549) e!240850)))

(declare-fun array_inv!8315 (array!23825) Bool)

(assert (=> start!38562 (array_inv!8315 _keys!709)))

(declare-fun b!398591 () Bool)

(assert (=> b!398591 (= e!240850 (and e!240853 mapRes!16581))))

(declare-fun condMapEmpty!16581 () Bool)

(declare-fun mapDefault!16581 () ValueCell!4643)

