; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38566 () Bool)

(assert start!38566)

(declare-fun b_free!9095 () Bool)

(declare-fun b_next!9095 () Bool)

(assert (=> start!38566 (= b_free!9095 (not b_next!9095))))

(declare-fun tp!32409 () Bool)

(declare-fun b_and!16499 () Bool)

(assert (=> start!38566 (= tp!32409 b_and!16499)))

(declare-fun b!398686 () Bool)

(declare-fun e!240893 () Bool)

(declare-fun e!240896 () Bool)

(assert (=> b!398686 (= e!240893 e!240896)))

(declare-fun res!229237 () Bool)

(assert (=> b!398686 (=> (not res!229237) (not e!240896))))

(declare-datatypes ((array!23833 0))(
  ( (array!23834 (arr!11363 (Array (_ BitVec 32) (_ BitVec 64))) (size!11715 (_ BitVec 32))) )
))
(declare-fun lt!187472 () array!23833)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23833 (_ BitVec 32)) Bool)

(assert (=> b!398686 (= res!229237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187472 mask!1025))))

(declare-fun _keys!709 () array!23833)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398686 (= lt!187472 (array!23834 (store (arr!11363 _keys!709) i!563 k!794) (size!11715 _keys!709)))))

(declare-datatypes ((V!14407 0))(
  ( (V!14408 (val!5033 Int)) )
))
(declare-datatypes ((tuple2!6590 0))(
  ( (tuple2!6591 (_1!3305 (_ BitVec 64)) (_2!3305 V!14407)) )
))
(declare-datatypes ((List!6546 0))(
  ( (Nil!6543) (Cons!6542 (h!7398 tuple2!6590) (t!11728 List!6546)) )
))
(declare-datatypes ((ListLongMap!5517 0))(
  ( (ListLongMap!5518 (toList!2774 List!6546)) )
))
(declare-fun call!27946 () ListLongMap!5517)

(declare-fun e!240895 () Bool)

(declare-fun call!27947 () ListLongMap!5517)

(declare-fun b!398687 () Bool)

(declare-fun v!412 () V!14407)

(declare-fun +!1069 (ListLongMap!5517 tuple2!6590) ListLongMap!5517)

(assert (=> b!398687 (= e!240895 (= call!27947 (+!1069 call!27946 (tuple2!6591 k!794 v!412))))))

(declare-fun b!398688 () Bool)

(declare-fun res!229242 () Bool)

(assert (=> b!398688 (=> (not res!229242) (not e!240893))))

(declare-fun arrayContainsKey!0 (array!23833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398688 (= res!229242 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!398689 () Bool)

(declare-fun res!229241 () Bool)

(assert (=> b!398689 (=> (not res!229241) (not e!240896))))

(declare-datatypes ((List!6547 0))(
  ( (Nil!6544) (Cons!6543 (h!7399 (_ BitVec 64)) (t!11729 List!6547)) )
))
(declare-fun arrayNoDuplicates!0 (array!23833 (_ BitVec 32) List!6547) Bool)

(assert (=> b!398689 (= res!229241 (arrayNoDuplicates!0 lt!187472 #b00000000000000000000000000000000 Nil!6544))))

(declare-fun b!398690 () Bool)

(declare-fun e!240898 () Bool)

(declare-fun tp_is_empty!9977 () Bool)

(assert (=> b!398690 (= e!240898 tp_is_empty!9977)))

(declare-fun b!398691 () Bool)

(declare-fun res!229243 () Bool)

(assert (=> b!398691 (=> (not res!229243) (not e!240893))))

(assert (=> b!398691 (= res!229243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398692 () Bool)

(declare-fun res!229246 () Bool)

(assert (=> b!398692 (=> (not res!229246) (not e!240893))))

(assert (=> b!398692 (= res!229246 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6544))))

(declare-fun b!398693 () Bool)

(assert (=> b!398693 (= e!240895 (= call!27946 call!27947))))

(declare-fun mapIsEmpty!16587 () Bool)

(declare-fun mapRes!16587 () Bool)

(assert (=> mapIsEmpty!16587 mapRes!16587))

(declare-fun minValue!515 () V!14407)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4645 0))(
  ( (ValueCellFull!4645 (v!7276 V!14407)) (EmptyCell!4645) )
))
(declare-datatypes ((array!23835 0))(
  ( (array!23836 (arr!11364 (Array (_ BitVec 32) ValueCell!4645)) (size!11716 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23835)

(declare-fun zeroValue!515 () V!14407)

(declare-fun bm!27943 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54524 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!992 (array!23833 array!23835 (_ BitVec 32) (_ BitVec 32) V!14407 V!14407 (_ BitVec 32) Int) ListLongMap!5517)

(assert (=> bm!27943 (= call!27946 (getCurrentListMapNoExtraKeys!992 (ite c!54524 _keys!709 lt!187472) (ite c!54524 _values!549 (array!23836 (store (arr!11364 _values!549) i!563 (ValueCellFull!4645 v!412)) (size!11716 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398694 () Bool)

(declare-fun res!229239 () Bool)

(assert (=> b!398694 (=> (not res!229239) (not e!240893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398694 (= res!229239 (validKeyInArray!0 k!794))))

(declare-fun b!398695 () Bool)

(declare-fun res!229247 () Bool)

(assert (=> b!398695 (=> (not res!229247) (not e!240893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398695 (= res!229247 (validMask!0 mask!1025))))

(declare-fun b!398696 () Bool)

(declare-fun e!240894 () Bool)

(assert (=> b!398696 (= e!240894 tp_is_empty!9977)))

(declare-fun b!398697 () Bool)

(declare-fun e!240892 () Bool)

(assert (=> b!398697 (= e!240892 (and e!240898 mapRes!16587))))

(declare-fun condMapEmpty!16587 () Bool)

(declare-fun mapDefault!16587 () ValueCell!4645)

