; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39658 () Bool)

(assert start!39658)

(declare-fun b_free!9917 () Bool)

(declare-fun b_next!9917 () Bool)

(assert (=> start!39658 (= b_free!9917 (not b_next!9917))))

(declare-fun tp!35279 () Bool)

(declare-fun b_and!17591 () Bool)

(assert (=> start!39658 (= tp!35279 b_and!17591)))

(declare-fun b!425228 () Bool)

(declare-fun e!252453 () Bool)

(declare-fun e!252448 () Bool)

(assert (=> b!425228 (= e!252453 e!252448)))

(declare-fun res!249034 () Bool)

(assert (=> b!425228 (=> (not res!249034) (not e!252448))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425228 (= res!249034 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((array!25965 0))(
  ( (array!25966 (arr!12429 (Array (_ BitVec 32) (_ BitVec 64))) (size!12781 (_ BitVec 32))) )
))
(declare-fun lt!194607 () array!25965)

(declare-datatypes ((V!15863 0))(
  ( (V!15864 (val!5579 Int)) )
))
(declare-fun minValue!515 () V!15863)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15863)

(declare-datatypes ((tuple2!7266 0))(
  ( (tuple2!7267 (_1!3643 (_ BitVec 64)) (_2!3643 V!15863)) )
))
(declare-datatypes ((List!7311 0))(
  ( (Nil!7308) (Cons!7307 (h!8163 tuple2!7266) (t!12763 List!7311)) )
))
(declare-datatypes ((ListLongMap!6193 0))(
  ( (ListLongMap!6194 (toList!3112 List!7311)) )
))
(declare-fun lt!194609 () ListLongMap!6193)

(declare-datatypes ((ValueCell!5191 0))(
  ( (ValueCellFull!5191 (v!7822 V!15863)) (EmptyCell!5191) )
))
(declare-datatypes ((array!25967 0))(
  ( (array!25968 (arr!12430 (Array (_ BitVec 32) ValueCell!5191)) (size!12782 (_ BitVec 32))) )
))
(declare-fun lt!194610 () array!25967)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1313 (array!25965 array!25967 (_ BitVec 32) (_ BitVec 32) V!15863 V!15863 (_ BitVec 32) Int) ListLongMap!6193)

(assert (=> b!425228 (= lt!194609 (getCurrentListMapNoExtraKeys!1313 lt!194607 lt!194610 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25967)

(declare-fun v!412 () V!15863)

(assert (=> b!425228 (= lt!194610 (array!25968 (store (arr!12430 _values!549) i!563 (ValueCellFull!5191 v!412)) (size!12782 _values!549)))))

(declare-fun _keys!709 () array!25965)

(declare-fun lt!194606 () ListLongMap!6193)

(assert (=> b!425228 (= lt!194606 (getCurrentListMapNoExtraKeys!1313 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18225 () Bool)

(declare-fun mapRes!18225 () Bool)

(assert (=> mapIsEmpty!18225 mapRes!18225))

(declare-fun b!425229 () Bool)

(declare-fun res!249027 () Bool)

(assert (=> b!425229 (=> (not res!249027) (not e!252453))))

(assert (=> b!425229 (= res!249027 (bvsle from!863 i!563))))

(declare-fun b!425230 () Bool)

(declare-fun e!252452 () Bool)

(declare-fun tp_is_empty!11069 () Bool)

(assert (=> b!425230 (= e!252452 tp_is_empty!11069)))

(declare-fun res!249030 () Bool)

(declare-fun e!252454 () Bool)

(assert (=> start!39658 (=> (not res!249030) (not e!252454))))

(assert (=> start!39658 (= res!249030 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12781 _keys!709))))))

(assert (=> start!39658 e!252454))

(assert (=> start!39658 tp_is_empty!11069))

(assert (=> start!39658 tp!35279))

(assert (=> start!39658 true))

(declare-fun e!252450 () Bool)

(declare-fun array_inv!9060 (array!25967) Bool)

(assert (=> start!39658 (and (array_inv!9060 _values!549) e!252450)))

(declare-fun array_inv!9061 (array!25965) Bool)

(assert (=> start!39658 (array_inv!9061 _keys!709)))

(declare-fun b!425231 () Bool)

(declare-fun res!249038 () Bool)

(assert (=> b!425231 (=> (not res!249038) (not e!252454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25965 (_ BitVec 32)) Bool)

(assert (=> b!425231 (= res!249038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425232 () Bool)

(declare-fun e!252451 () Bool)

(assert (=> b!425232 (= e!252451 tp_is_empty!11069)))

(declare-fun mapNonEmpty!18225 () Bool)

(declare-fun tp!35280 () Bool)

(assert (=> mapNonEmpty!18225 (= mapRes!18225 (and tp!35280 e!252452))))

(declare-fun mapRest!18225 () (Array (_ BitVec 32) ValueCell!5191))

(declare-fun mapValue!18225 () ValueCell!5191)

(declare-fun mapKey!18225 () (_ BitVec 32))

(assert (=> mapNonEmpty!18225 (= (arr!12430 _values!549) (store mapRest!18225 mapKey!18225 mapValue!18225))))

(declare-fun b!425233 () Bool)

(declare-fun res!249028 () Bool)

(assert (=> b!425233 (=> (not res!249028) (not e!252454))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425233 (= res!249028 (validKeyInArray!0 k!794))))

(declare-fun b!425234 () Bool)

(declare-fun res!249031 () Bool)

(assert (=> b!425234 (=> (not res!249031) (not e!252454))))

(assert (=> b!425234 (= res!249031 (or (= (select (arr!12429 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12429 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425235 () Bool)

(assert (=> b!425235 (= e!252450 (and e!252451 mapRes!18225))))

(declare-fun condMapEmpty!18225 () Bool)

(declare-fun mapDefault!18225 () ValueCell!5191)

