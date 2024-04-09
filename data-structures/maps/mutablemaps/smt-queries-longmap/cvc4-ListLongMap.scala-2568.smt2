; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39238 () Bool)

(assert start!39238)

(declare-fun b_free!9497 () Bool)

(declare-fun b_next!9497 () Bool)

(assert (=> start!39238 (= b_free!9497 (not b_next!9497))))

(declare-fun tp!34020 () Bool)

(declare-fun b_and!16901 () Bool)

(assert (=> start!39238 (= tp!34020 b_and!16901)))

(declare-fun b!413778 () Bool)

(declare-fun e!247363 () Bool)

(assert (=> b!413778 (= e!247363 (not true))))

(declare-fun e!247364 () Bool)

(assert (=> b!413778 e!247364))

(declare-fun c!54884 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413778 (= c!54884 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15303 0))(
  ( (V!15304 (val!5369 Int)) )
))
(declare-fun minValue!515 () V!15303)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4981 0))(
  ( (ValueCellFull!4981 (v!7612 V!15303)) (EmptyCell!4981) )
))
(declare-datatypes ((array!25137 0))(
  ( (array!25138 (arr!12015 (Array (_ BitVec 32) ValueCell!4981)) (size!12367 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25137)

(declare-fun zeroValue!515 () V!15303)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15303)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12203 0))(
  ( (Unit!12204) )
))
(declare-fun lt!189838 () Unit!12203)

(declare-datatypes ((array!25139 0))(
  ( (array!25140 (arr!12016 (Array (_ BitVec 32) (_ BitVec 64))) (size!12368 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25139)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!364 (array!25139 array!25137 (_ BitVec 32) (_ BitVec 32) V!15303 V!15303 (_ BitVec 32) (_ BitVec 64) V!15303 (_ BitVec 32) Int) Unit!12203)

(assert (=> b!413778 (= lt!189838 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!364 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17595 () Bool)

(declare-fun mapRes!17595 () Bool)

(assert (=> mapIsEmpty!17595 mapRes!17595))

(declare-fun b!413779 () Bool)

(declare-fun res!240595 () Bool)

(declare-fun e!247366 () Bool)

(assert (=> b!413779 (=> (not res!240595) (not e!247366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413779 (= res!240595 (validKeyInArray!0 k!794))))

(declare-fun b!413780 () Bool)

(declare-fun res!240591 () Bool)

(assert (=> b!413780 (=> (not res!240591) (not e!247366))))

(declare-fun arrayContainsKey!0 (array!25139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413780 (= res!240591 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6906 0))(
  ( (tuple2!6907 (_1!3463 (_ BitVec 64)) (_2!3463 V!15303)) )
))
(declare-datatypes ((List!6967 0))(
  ( (Nil!6964) (Cons!6963 (h!7819 tuple2!6906) (t!12149 List!6967)) )
))
(declare-datatypes ((ListLongMap!5833 0))(
  ( (ListLongMap!5834 (toList!2932 List!6967)) )
))
(declare-fun call!28666 () ListLongMap!5833)

(declare-fun bm!28663 () Bool)

(declare-fun lt!189837 () array!25139)

(declare-fun lt!189840 () array!25137)

(declare-fun getCurrentListMapNoExtraKeys!1140 (array!25139 array!25137 (_ BitVec 32) (_ BitVec 32) V!15303 V!15303 (_ BitVec 32) Int) ListLongMap!5833)

(assert (=> bm!28663 (= call!28666 (getCurrentListMapNoExtraKeys!1140 (ite c!54884 _keys!709 lt!189837) (ite c!54884 _values!549 lt!189840) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413782 () Bool)

(declare-fun res!240585 () Bool)

(assert (=> b!413782 (=> (not res!240585) (not e!247366))))

(assert (=> b!413782 (= res!240585 (or (= (select (arr!12016 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12016 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413783 () Bool)

(declare-fun e!247362 () Bool)

(assert (=> b!413783 (= e!247366 e!247362)))

(declare-fun res!240592 () Bool)

(assert (=> b!413783 (=> (not res!240592) (not e!247362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25139 (_ BitVec 32)) Bool)

(assert (=> b!413783 (= res!240592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189837 mask!1025))))

(assert (=> b!413783 (= lt!189837 (array!25140 (store (arr!12016 _keys!709) i!563 k!794) (size!12368 _keys!709)))))

(declare-fun b!413784 () Bool)

(declare-fun call!28667 () ListLongMap!5833)

(assert (=> b!413784 (= e!247364 (= call!28666 call!28667))))

(declare-fun b!413785 () Bool)

(declare-fun e!247367 () Bool)

(declare-fun tp_is_empty!10649 () Bool)

(assert (=> b!413785 (= e!247367 tp_is_empty!10649)))

(declare-fun b!413786 () Bool)

(declare-fun res!240594 () Bool)

(assert (=> b!413786 (=> (not res!240594) (not e!247366))))

(assert (=> b!413786 (= res!240594 (and (= (size!12367 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12368 _keys!709) (size!12367 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413787 () Bool)

(declare-fun e!247369 () Bool)

(assert (=> b!413787 (= e!247369 (and e!247367 mapRes!17595))))

(declare-fun condMapEmpty!17595 () Bool)

(declare-fun mapDefault!17595 () ValueCell!4981)

