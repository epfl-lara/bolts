; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43222 () Bool)

(assert start!43222)

(declare-fun mapIsEmpty!22099 () Bool)

(declare-fun mapRes!22099 () Bool)

(assert (=> mapIsEmpty!22099 mapRes!22099))

(declare-fun b!478717 () Bool)

(declare-fun e!281562 () Bool)

(declare-fun tp_is_empty!13603 () Bool)

(assert (=> b!478717 (= e!281562 tp_is_empty!13603)))

(declare-fun mapNonEmpty!22099 () Bool)

(declare-fun tp!42574 () Bool)

(assert (=> mapNonEmpty!22099 (= mapRes!22099 (and tp!42574 e!281562))))

(declare-datatypes ((V!19209 0))(
  ( (V!19210 (val!6849 Int)) )
))
(declare-datatypes ((ValueCell!6440 0))(
  ( (ValueCellFull!6440 (v!9134 V!19209)) (EmptyCell!6440) )
))
(declare-fun mapValue!22099 () ValueCell!6440)

(declare-fun mapRest!22099 () (Array (_ BitVec 32) ValueCell!6440))

(declare-fun mapKey!22099 () (_ BitVec 32))

(declare-datatypes ((array!30847 0))(
  ( (array!30848 (arr!14828 (Array (_ BitVec 32) ValueCell!6440)) (size!15186 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30847)

(assert (=> mapNonEmpty!22099 (= (arr!14828 _values!1516) (store mapRest!22099 mapKey!22099 mapValue!22099))))

(declare-fun b!478718 () Bool)

(declare-fun e!281566 () Bool)

(assert (=> b!478718 (= e!281566 tp_is_empty!13603)))

(declare-fun res!285660 () Bool)

(declare-fun e!281564 () Bool)

(assert (=> start!43222 (=> (not res!285660) (not e!281564))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43222 (= res!285660 (validMask!0 mask!2352))))

(assert (=> start!43222 e!281564))

(assert (=> start!43222 true))

(declare-fun e!281563 () Bool)

(declare-fun array_inv!10686 (array!30847) Bool)

(assert (=> start!43222 (and (array_inv!10686 _values!1516) e!281563)))

(declare-datatypes ((array!30849 0))(
  ( (array!30850 (arr!14829 (Array (_ BitVec 32) (_ BitVec 64))) (size!15187 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30849)

(declare-fun array_inv!10687 (array!30849) Bool)

(assert (=> start!43222 (array_inv!10687 _keys!1874)))

(declare-fun b!478719 () Bool)

(assert (=> b!478719 (= e!281564 false)))

(declare-fun lt!217751 () Bool)

(declare-datatypes ((List!9103 0))(
  ( (Nil!9100) (Cons!9099 (h!9955 (_ BitVec 64)) (t!15317 List!9103)) )
))
(declare-fun arrayNoDuplicates!0 (array!30849 (_ BitVec 32) List!9103) Bool)

(assert (=> b!478719 (= lt!217751 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9100))))

(declare-fun b!478720 () Bool)

(declare-fun res!285658 () Bool)

(assert (=> b!478720 (=> (not res!285658) (not e!281564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30849 (_ BitVec 32)) Bool)

(assert (=> b!478720 (= res!285658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478721 () Bool)

(assert (=> b!478721 (= e!281563 (and e!281566 mapRes!22099))))

(declare-fun condMapEmpty!22099 () Bool)

(declare-fun mapDefault!22099 () ValueCell!6440)

