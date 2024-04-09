; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39240 () Bool)

(assert start!39240)

(declare-fun b_free!9499 () Bool)

(declare-fun b_next!9499 () Bool)

(assert (=> start!39240 (= b_free!9499 (not b_next!9499))))

(declare-fun tp!34026 () Bool)

(declare-fun b_and!16903 () Bool)

(assert (=> start!39240 (= tp!34026 b_and!16903)))

(declare-fun b!413832 () Bool)

(declare-fun res!240628 () Bool)

(declare-fun e!247388 () Bool)

(assert (=> b!413832 (=> (not res!240628) (not e!247388))))

(declare-datatypes ((array!25141 0))(
  ( (array!25142 (arr!12017 (Array (_ BitVec 32) (_ BitVec 64))) (size!12369 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25141)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413832 (= res!240628 (or (= (select (arr!12017 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12017 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17598 () Bool)

(declare-fun mapRes!17598 () Bool)

(assert (=> mapIsEmpty!17598 mapRes!17598))

(declare-fun b!413833 () Bool)

(declare-fun e!247392 () Bool)

(declare-fun tp_is_empty!10651 () Bool)

(assert (=> b!413833 (= e!247392 tp_is_empty!10651)))

(declare-fun e!247391 () Bool)

(declare-datatypes ((V!15307 0))(
  ( (V!15308 (val!5370 Int)) )
))
(declare-datatypes ((tuple2!6908 0))(
  ( (tuple2!6909 (_1!3464 (_ BitVec 64)) (_2!3464 V!15307)) )
))
(declare-datatypes ((List!6968 0))(
  ( (Nil!6965) (Cons!6964 (h!7820 tuple2!6908) (t!12150 List!6968)) )
))
(declare-datatypes ((ListLongMap!5835 0))(
  ( (ListLongMap!5836 (toList!2933 List!6968)) )
))
(declare-fun call!28673 () ListLongMap!5835)

(declare-fun b!413834 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!28672 () ListLongMap!5835)

(declare-fun v!412 () V!15307)

(declare-fun +!1151 (ListLongMap!5835 tuple2!6908) ListLongMap!5835)

(assert (=> b!413834 (= e!247391 (= call!28672 (+!1151 call!28673 (tuple2!6909 k!794 v!412))))))

(declare-fun b!413835 () Bool)

(declare-fun e!247389 () Bool)

(assert (=> b!413835 (= e!247388 e!247389)))

(declare-fun res!240636 () Bool)

(assert (=> b!413835 (=> (not res!240636) (not e!247389))))

(declare-fun lt!189854 () array!25141)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25141 (_ BitVec 32)) Bool)

(assert (=> b!413835 (= res!240636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189854 mask!1025))))

(assert (=> b!413835 (= lt!189854 (array!25142 (store (arr!12017 _keys!709) i!563 k!794) (size!12369 _keys!709)))))

(declare-fun b!413836 () Bool)

(declare-fun e!247387 () Bool)

(assert (=> b!413836 (= e!247387 tp_is_empty!10651)))

(declare-fun b!413837 () Bool)

(declare-fun res!240629 () Bool)

(assert (=> b!413837 (=> (not res!240629) (not e!247388))))

(assert (=> b!413837 (= res!240629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413838 () Bool)

(declare-fun res!240634 () Bool)

(assert (=> b!413838 (=> (not res!240634) (not e!247388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413838 (= res!240634 (validMask!0 mask!1025))))

(declare-fun b!413839 () Bool)

(declare-fun e!247390 () Bool)

(assert (=> b!413839 (= e!247389 e!247390)))

(declare-fun res!240626 () Bool)

(assert (=> b!413839 (=> (not res!240626) (not e!247390))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413839 (= res!240626 (= from!863 i!563))))

(declare-fun minValue!515 () V!15307)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!189855 () ListLongMap!5835)

(declare-fun zeroValue!515 () V!15307)

(declare-datatypes ((ValueCell!4982 0))(
  ( (ValueCellFull!4982 (v!7613 V!15307)) (EmptyCell!4982) )
))
(declare-datatypes ((array!25143 0))(
  ( (array!25144 (arr!12018 (Array (_ BitVec 32) ValueCell!4982)) (size!12370 (_ BitVec 32))) )
))
(declare-fun lt!189853 () array!25143)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1141 (array!25141 array!25143 (_ BitVec 32) (_ BitVec 32) V!15307 V!15307 (_ BitVec 32) Int) ListLongMap!5835)

(assert (=> b!413839 (= lt!189855 (getCurrentListMapNoExtraKeys!1141 lt!189854 lt!189853 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25143)

(assert (=> b!413839 (= lt!189853 (array!25144 (store (arr!12018 _values!549) i!563 (ValueCellFull!4982 v!412)) (size!12370 _values!549)))))

(declare-fun lt!189851 () ListLongMap!5835)

(assert (=> b!413839 (= lt!189851 (getCurrentListMapNoExtraKeys!1141 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413840 () Bool)

(declare-fun res!240625 () Bool)

(assert (=> b!413840 (=> (not res!240625) (not e!247388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413840 (= res!240625 (validKeyInArray!0 k!794))))

(declare-fun res!240633 () Bool)

(assert (=> start!39240 (=> (not res!240633) (not e!247388))))

(assert (=> start!39240 (= res!240633 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12369 _keys!709))))))

(assert (=> start!39240 e!247388))

(assert (=> start!39240 tp_is_empty!10651))

(assert (=> start!39240 tp!34026))

(assert (=> start!39240 true))

(declare-fun e!247386 () Bool)

(declare-fun array_inv!8766 (array!25143) Bool)

(assert (=> start!39240 (and (array_inv!8766 _values!549) e!247386)))

(declare-fun array_inv!8767 (array!25141) Bool)

(assert (=> start!39240 (array_inv!8767 _keys!709)))

(declare-fun bm!28669 () Bool)

(declare-fun c!54887 () Bool)

(assert (=> bm!28669 (= call!28672 (getCurrentListMapNoExtraKeys!1141 (ite c!54887 lt!189854 _keys!709) (ite c!54887 lt!189853 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17598 () Bool)

(declare-fun tp!34025 () Bool)

(assert (=> mapNonEmpty!17598 (= mapRes!17598 (and tp!34025 e!247387))))

(declare-fun mapValue!17598 () ValueCell!4982)

(declare-fun mapKey!17598 () (_ BitVec 32))

(declare-fun mapRest!17598 () (Array (_ BitVec 32) ValueCell!4982))

(assert (=> mapNonEmpty!17598 (= (arr!12018 _values!549) (store mapRest!17598 mapKey!17598 mapValue!17598))))

(declare-fun b!413841 () Bool)

(assert (=> b!413841 (= e!247390 (not true))))

(assert (=> b!413841 e!247391))

(assert (=> b!413841 (= c!54887 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12205 0))(
  ( (Unit!12206) )
))
(declare-fun lt!189852 () Unit!12205)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!365 (array!25141 array!25143 (_ BitVec 32) (_ BitVec 32) V!15307 V!15307 (_ BitVec 32) (_ BitVec 64) V!15307 (_ BitVec 32) Int) Unit!12205)

(assert (=> b!413841 (= lt!189852 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!365 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413842 () Bool)

(declare-fun res!240630 () Bool)

(assert (=> b!413842 (=> (not res!240630) (not e!247388))))

(assert (=> b!413842 (= res!240630 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12369 _keys!709))))))

(declare-fun b!413843 () Bool)

(declare-fun res!240631 () Bool)

(assert (=> b!413843 (=> (not res!240631) (not e!247388))))

(declare-fun arrayContainsKey!0 (array!25141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413843 (= res!240631 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413844 () Bool)

(assert (=> b!413844 (= e!247386 (and e!247392 mapRes!17598))))

(declare-fun condMapEmpty!17598 () Bool)

(declare-fun mapDefault!17598 () ValueCell!4982)

