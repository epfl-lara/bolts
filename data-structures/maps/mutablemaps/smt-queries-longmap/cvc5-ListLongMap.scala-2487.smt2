; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38748 () Bool)

(assert start!38748)

(declare-fun b_free!9277 () Bool)

(declare-fun b_next!9277 () Bool)

(assert (=> start!38748 (= b_free!9277 (not b_next!9277))))

(declare-fun tp!32955 () Bool)

(declare-fun b_and!16681 () Bool)

(assert (=> start!38748 (= tp!32955 b_and!16681)))

(declare-fun b!403327 () Bool)

(declare-fun e!242804 () Bool)

(declare-fun tp_is_empty!10159 () Bool)

(assert (=> b!403327 (= e!242804 tp_is_empty!10159)))

(declare-fun mapIsEmpty!16860 () Bool)

(declare-fun mapRes!16860 () Bool)

(assert (=> mapIsEmpty!16860 mapRes!16860))

(declare-fun b!403328 () Bool)

(declare-fun res!232515 () Bool)

(declare-fun e!242809 () Bool)

(assert (=> b!403328 (=> (not res!232515) (not e!242809))))

(declare-datatypes ((array!24189 0))(
  ( (array!24190 (arr!11541 (Array (_ BitVec 32) (_ BitVec 64))) (size!11893 (_ BitVec 32))) )
))
(declare-fun lt!188019 () array!24189)

(declare-datatypes ((List!6697 0))(
  ( (Nil!6694) (Cons!6693 (h!7549 (_ BitVec 64)) (t!11879 List!6697)) )
))
(declare-fun arrayNoDuplicates!0 (array!24189 (_ BitVec 32) List!6697) Bool)

(assert (=> b!403328 (= res!232515 (arrayNoDuplicates!0 lt!188019 #b00000000000000000000000000000000 Nil!6694))))

(declare-fun b!403329 () Bool)

(declare-fun res!232521 () Bool)

(declare-fun e!242803 () Bool)

(assert (=> b!403329 (=> (not res!232521) (not e!242803))))

(declare-fun _keys!709 () array!24189)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24189 (_ BitVec 32)) Bool)

(assert (=> b!403329 (= res!232521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun e!242805 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!403330 () Bool)

(declare-datatypes ((V!14651 0))(
  ( (V!14652 (val!5124 Int)) )
))
(declare-fun v!412 () V!14651)

(declare-datatypes ((tuple2!6758 0))(
  ( (tuple2!6759 (_1!3389 (_ BitVec 64)) (_2!3389 V!14651)) )
))
(declare-datatypes ((List!6698 0))(
  ( (Nil!6695) (Cons!6694 (h!7550 tuple2!6758) (t!11880 List!6698)) )
))
(declare-datatypes ((ListLongMap!5685 0))(
  ( (ListLongMap!5686 (toList!2858 List!6698)) )
))
(declare-fun call!28493 () ListLongMap!5685)

(declare-fun call!28492 () ListLongMap!5685)

(declare-fun +!1132 (ListLongMap!5685 tuple2!6758) ListLongMap!5685)

(assert (=> b!403330 (= e!242805 (= call!28493 (+!1132 call!28492 (tuple2!6759 k!794 v!412))))))

(declare-fun res!232522 () Bool)

(assert (=> start!38748 (=> (not res!232522) (not e!242803))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38748 (= res!232522 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11893 _keys!709))))))

(assert (=> start!38748 e!242803))

(assert (=> start!38748 tp_is_empty!10159))

(assert (=> start!38748 tp!32955))

(assert (=> start!38748 true))

(declare-datatypes ((ValueCell!4736 0))(
  ( (ValueCellFull!4736 (v!7367 V!14651)) (EmptyCell!4736) )
))
(declare-datatypes ((array!24191 0))(
  ( (array!24192 (arr!11542 (Array (_ BitVec 32) ValueCell!4736)) (size!11894 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24191)

(declare-fun e!242808 () Bool)

(declare-fun array_inv!8432 (array!24191) Bool)

(assert (=> start!38748 (and (array_inv!8432 _values!549) e!242808)))

(declare-fun array_inv!8433 (array!24189) Bool)

(assert (=> start!38748 (array_inv!8433 _keys!709)))

(declare-fun b!403331 () Bool)

(assert (=> b!403331 (= e!242809 (not true))))

(assert (=> b!403331 e!242805))

(declare-fun c!54797 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403331 (= c!54797 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14651)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14651)

(declare-datatypes ((Unit!12159 0))(
  ( (Unit!12160) )
))
(declare-fun lt!188018 () Unit!12159)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!342 (array!24189 array!24191 (_ BitVec 32) (_ BitVec 32) V!14651 V!14651 (_ BitVec 32) (_ BitVec 64) V!14651 (_ BitVec 32) Int) Unit!12159)

(assert (=> b!403331 (= lt!188018 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!342 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403332 () Bool)

(declare-fun res!232523 () Bool)

(assert (=> b!403332 (=> (not res!232523) (not e!242803))))

(assert (=> b!403332 (= res!232523 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6694))))

(declare-fun bm!28489 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1069 (array!24189 array!24191 (_ BitVec 32) (_ BitVec 32) V!14651 V!14651 (_ BitVec 32) Int) ListLongMap!5685)

(assert (=> bm!28489 (= call!28492 (getCurrentListMapNoExtraKeys!1069 (ite c!54797 _keys!709 lt!188019) (ite c!54797 _values!549 (array!24192 (store (arr!11542 _values!549) i!563 (ValueCellFull!4736 v!412)) (size!11894 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403333 () Bool)

(declare-fun e!242806 () Bool)

(assert (=> b!403333 (= e!242806 tp_is_empty!10159)))

(declare-fun b!403334 () Bool)

(declare-fun res!232514 () Bool)

(assert (=> b!403334 (=> (not res!232514) (not e!242803))))

(assert (=> b!403334 (= res!232514 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11893 _keys!709))))))

(declare-fun b!403335 () Bool)

(assert (=> b!403335 (= e!242808 (and e!242804 mapRes!16860))))

(declare-fun condMapEmpty!16860 () Bool)

(declare-fun mapDefault!16860 () ValueCell!4736)

