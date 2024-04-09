; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106936 () Bool)

(assert start!106936)

(declare-fun b!1267955 () Bool)

(declare-fun e!722460 () Bool)

(declare-fun tp_is_empty!32633 () Bool)

(assert (=> b!1267955 (= e!722460 tp_is_empty!32633)))

(declare-fun b!1267956 () Bool)

(declare-fun e!722463 () Bool)

(assert (=> b!1267956 (= e!722463 tp_is_empty!32633)))

(declare-datatypes ((V!48703 0))(
  ( (V!48704 (val!16391 Int)) )
))
(declare-datatypes ((ValueCell!15463 0))(
  ( (ValueCellFull!15463 (v!19025 V!48703)) (EmptyCell!15463) )
))
(declare-datatypes ((array!82513 0))(
  ( (array!82514 (arr!39794 (Array (_ BitVec 32) ValueCell!15463)) (size!40331 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82513)

(declare-fun e!722462 () Bool)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82515 0))(
  ( (array!82516 (arr!39795 (Array (_ BitVec 32) (_ BitVec 64))) (size!40332 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82515)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun b!1267957 () Bool)

(assert (=> b!1267957 (= e!722462 (and (= (size!40331 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40332 _keys!1364) (size!40331 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011) (= (size!40332 _keys!1364) (bvadd #b00000000000000000000000000000001 mask!1730)) (bvsgt #b00000000000000000000000000000000 (size!40332 _keys!1364))))))

(declare-fun mapIsEmpty!50515 () Bool)

(declare-fun mapRes!50515 () Bool)

(assert (=> mapIsEmpty!50515 mapRes!50515))

(declare-fun res!844071 () Bool)

(assert (=> start!106936 (=> (not res!844071) (not e!722462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106936 (= res!844071 (validMask!0 mask!1730))))

(assert (=> start!106936 e!722462))

(declare-fun e!722461 () Bool)

(declare-fun array_inv!30241 (array!82513) Bool)

(assert (=> start!106936 (and (array_inv!30241 _values!1134) e!722461)))

(assert (=> start!106936 true))

(declare-fun array_inv!30242 (array!82515) Bool)

(assert (=> start!106936 (array_inv!30242 _keys!1364)))

(declare-fun b!1267958 () Bool)

(assert (=> b!1267958 (= e!722461 (and e!722460 mapRes!50515))))

(declare-fun condMapEmpty!50515 () Bool)

(declare-fun mapDefault!50515 () ValueCell!15463)

