; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108076 () Bool)

(assert start!108076)

(declare-fun b!1275956 () Bool)

(declare-fun e!728577 () Bool)

(declare-fun tp_is_empty!33313 () Bool)

(assert (=> b!1275956 (= e!728577 tp_is_empty!33313)))

(declare-fun mapIsEmpty!51497 () Bool)

(declare-fun mapRes!51497 () Bool)

(assert (=> mapIsEmpty!51497 mapRes!51497))

(declare-fun b!1275957 () Bool)

(declare-fun res!848093 () Bool)

(declare-fun e!728576 () Bool)

(assert (=> b!1275957 (=> (not res!848093) (not e!728576))))

(declare-datatypes ((array!83677 0))(
  ( (array!83678 (arr!40346 (Array (_ BitVec 32) (_ BitVec 64))) (size!40897 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83677)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83677 (_ BitVec 32)) Bool)

(assert (=> b!1275957 (= res!848093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275958 () Bool)

(declare-fun e!728579 () Bool)

(assert (=> b!1275958 (= e!728579 tp_is_empty!33313)))

(declare-fun b!1275959 () Bool)

(declare-fun res!848092 () Bool)

(assert (=> b!1275959 (=> (not res!848092) (not e!728576))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49521 0))(
  ( (V!49522 (val!16731 Int)) )
))
(declare-datatypes ((ValueCell!15758 0))(
  ( (ValueCellFull!15758 (v!19326 V!49521)) (EmptyCell!15758) )
))
(declare-datatypes ((array!83679 0))(
  ( (array!83680 (arr!40347 (Array (_ BitVec 32) ValueCell!15758)) (size!40898 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83679)

(assert (=> b!1275959 (= res!848092 (and (= (size!40898 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40897 _keys!1427) (size!40898 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275960 () Bool)

(declare-fun e!728578 () Bool)

(assert (=> b!1275960 (= e!728578 (and e!728579 mapRes!51497))))

(declare-fun condMapEmpty!51497 () Bool)

(declare-fun mapDefault!51497 () ValueCell!15758)

