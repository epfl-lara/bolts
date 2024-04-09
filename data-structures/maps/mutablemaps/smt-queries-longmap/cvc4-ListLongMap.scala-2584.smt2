; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39334 () Bool)

(assert start!39334)

(declare-fun b_free!9593 () Bool)

(declare-fun b_next!9593 () Bool)

(assert (=> start!39334 (= b_free!9593 (not b_next!9593))))

(declare-fun tp!34308 () Bool)

(declare-fun b_and!17079 () Bool)

(assert (=> start!39334 (= tp!34308 b_and!17079)))

(declare-fun b!416586 () Bool)

(declare-fun res!242594 () Bool)

(declare-fun e!248652 () Bool)

(assert (=> b!416586 (=> (not res!242594) (not e!248652))))

(declare-datatypes ((array!25325 0))(
  ( (array!25326 (arr!12109 (Array (_ BitVec 32) (_ BitVec 64))) (size!12461 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25325)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416586 (= res!242594 (or (= (select (arr!12109 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12109 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!242595 () Bool)

(assert (=> start!39334 (=> (not res!242595) (not e!248652))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39334 (= res!242595 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12461 _keys!709))))))

(assert (=> start!39334 e!248652))

(declare-fun tp_is_empty!10745 () Bool)

(assert (=> start!39334 tp_is_empty!10745))

(assert (=> start!39334 tp!34308))

(assert (=> start!39334 true))

(declare-datatypes ((V!15431 0))(
  ( (V!15432 (val!5417 Int)) )
))
(declare-datatypes ((ValueCell!5029 0))(
  ( (ValueCellFull!5029 (v!7660 V!15431)) (EmptyCell!5029) )
))
(declare-datatypes ((array!25327 0))(
  ( (array!25328 (arr!12110 (Array (_ BitVec 32) ValueCell!5029)) (size!12462 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25327)

(declare-fun e!248648 () Bool)

(declare-fun array_inv!8830 (array!25327) Bool)

(assert (=> start!39334 (and (array_inv!8830 _values!549) e!248648)))

(declare-fun array_inv!8831 (array!25325) Bool)

(assert (=> start!39334 (array_inv!8831 _keys!709)))

(declare-fun b!416587 () Bool)

(declare-fun res!242592 () Bool)

(assert (=> b!416587 (=> (not res!242592) (not e!248652))))

(declare-datatypes ((List!7047 0))(
  ( (Nil!7044) (Cons!7043 (h!7899 (_ BitVec 64)) (t!12313 List!7047)) )
))
(declare-fun arrayNoDuplicates!0 (array!25325 (_ BitVec 32) List!7047) Bool)

(assert (=> b!416587 (= res!242592 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7044))))

(declare-fun b!416588 () Bool)

(declare-fun res!242600 () Bool)

(declare-fun e!248655 () Bool)

(assert (=> b!416588 (=> (not res!242600) (not e!248655))))

(assert (=> b!416588 (= res!242600 (bvsle from!863 i!563))))

(declare-fun b!416589 () Bool)

(declare-fun res!242603 () Bool)

(assert (=> b!416589 (=> (not res!242603) (not e!248652))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25325 (_ BitVec 32)) Bool)

(assert (=> b!416589 (= res!242603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17739 () Bool)

(declare-fun mapRes!17739 () Bool)

(assert (=> mapIsEmpty!17739 mapRes!17739))

(declare-fun b!416590 () Bool)

(declare-fun res!242599 () Bool)

(assert (=> b!416590 (=> (not res!242599) (not e!248652))))

(assert (=> b!416590 (= res!242599 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12461 _keys!709))))))

(declare-fun b!416591 () Bool)

(declare-fun e!248649 () Bool)

(assert (=> b!416591 (= e!248655 e!248649)))

(declare-fun res!242597 () Bool)

(assert (=> b!416591 (=> (not res!242597) (not e!248649))))

(assert (=> b!416591 (= res!242597 (= from!863 i!563))))

(declare-fun minValue!515 () V!15431)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190826 () array!25327)

(declare-fun lt!190828 () array!25325)

(declare-fun zeroValue!515 () V!15431)

(declare-datatypes ((tuple2!6994 0))(
  ( (tuple2!6995 (_1!3507 (_ BitVec 64)) (_2!3507 V!15431)) )
))
(declare-datatypes ((List!7048 0))(
  ( (Nil!7045) (Cons!7044 (h!7900 tuple2!6994) (t!12314 List!7048)) )
))
(declare-datatypes ((ListLongMap!5921 0))(
  ( (ListLongMap!5922 (toList!2976 List!7048)) )
))
(declare-fun lt!190830 () ListLongMap!5921)

(declare-fun getCurrentListMapNoExtraKeys!1179 (array!25325 array!25327 (_ BitVec 32) (_ BitVec 32) V!15431 V!15431 (_ BitVec 32) Int) ListLongMap!5921)

(assert (=> b!416591 (= lt!190830 (getCurrentListMapNoExtraKeys!1179 lt!190828 lt!190826 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15431)

(assert (=> b!416591 (= lt!190826 (array!25328 (store (arr!12110 _values!549) i!563 (ValueCellFull!5029 v!412)) (size!12462 _values!549)))))

(declare-fun lt!190824 () ListLongMap!5921)

(assert (=> b!416591 (= lt!190824 (getCurrentListMapNoExtraKeys!1179 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!28951 () Bool)

(declare-fun c!55028 () Bool)

(declare-fun call!28955 () ListLongMap!5921)

(assert (=> bm!28951 (= call!28955 (getCurrentListMapNoExtraKeys!1179 (ite c!55028 _keys!709 lt!190828) (ite c!55028 _values!549 lt!190826) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416592 () Bool)

(declare-fun e!248656 () Bool)

(assert (=> b!416592 (= e!248656 tp_is_empty!10745)))

(declare-fun b!416593 () Bool)

(declare-fun res!242604 () Bool)

(assert (=> b!416593 (=> (not res!242604) (not e!248652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416593 (= res!242604 (validMask!0 mask!1025))))

(declare-fun b!416594 () Bool)

(assert (=> b!416594 (= e!248652 e!248655)))

(declare-fun res!242593 () Bool)

(assert (=> b!416594 (=> (not res!242593) (not e!248655))))

(assert (=> b!416594 (= res!242593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190828 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!416594 (= lt!190828 (array!25326 (store (arr!12109 _keys!709) i!563 k!794) (size!12461 _keys!709)))))

(declare-fun b!416595 () Bool)

(declare-fun e!248650 () Bool)

(assert (=> b!416595 (= e!248649 (not e!248650))))

(declare-fun res!242601 () Bool)

(assert (=> b!416595 (=> res!242601 e!248650)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416595 (= res!242601 (validKeyInArray!0 (select (arr!12109 _keys!709) from!863)))))

(declare-fun e!248654 () Bool)

(assert (=> b!416595 e!248654))

(assert (=> b!416595 (= c!55028 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12275 0))(
  ( (Unit!12276) )
))
(declare-fun lt!190823 () Unit!12275)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!399 (array!25325 array!25327 (_ BitVec 32) (_ BitVec 32) V!15431 V!15431 (_ BitVec 32) (_ BitVec 64) V!15431 (_ BitVec 32) Int) Unit!12275)

(assert (=> b!416595 (= lt!190823 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!399 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416596 () Bool)

(declare-fun res!242596 () Bool)

(assert (=> b!416596 (=> (not res!242596) (not e!248652))))

(declare-fun arrayContainsKey!0 (array!25325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416596 (= res!242596 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!416597 () Bool)

(assert (=> b!416597 (= e!248648 (and e!248656 mapRes!17739))))

(declare-fun condMapEmpty!17739 () Bool)

(declare-fun mapDefault!17739 () ValueCell!5029)

