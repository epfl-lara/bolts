; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107198 () Bool)

(assert start!107198)

(declare-fun mapIsEmpty!50857 () Bool)

(declare-fun mapRes!50857 () Bool)

(assert (=> mapIsEmpty!50857 mapRes!50857))

(declare-fun b!1270383 () Bool)

(declare-fun e!724191 () Bool)

(declare-fun tp_is_empty!32851 () Bool)

(assert (=> b!1270383 (= e!724191 tp_is_empty!32851)))

(declare-fun b!1270384 () Bool)

(declare-fun e!724189 () Bool)

(assert (=> b!1270384 (= e!724189 tp_is_empty!32851)))

(declare-fun b!1270385 () Bool)

(declare-fun res!845454 () Bool)

(declare-fun e!724190 () Bool)

(assert (=> b!1270385 (=> (not res!845454) (not e!724190))))

(declare-datatypes ((array!82931 0))(
  ( (array!82932 (arr!39998 (Array (_ BitVec 32) (_ BitVec 64))) (size!40535 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82931)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82931 (_ BitVec 32)) Bool)

(assert (=> b!1270385 (= res!845454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270386 () Bool)

(declare-fun res!845456 () Bool)

(assert (=> b!1270386 (=> (not res!845456) (not e!724190))))

(declare-datatypes ((V!48995 0))(
  ( (V!48996 (val!16500 Int)) )
))
(declare-datatypes ((ValueCell!15572 0))(
  ( (ValueCellFull!15572 (v!19135 V!48995)) (EmptyCell!15572) )
))
(declare-datatypes ((array!82933 0))(
  ( (array!82934 (arr!39999 (Array (_ BitVec 32) ValueCell!15572)) (size!40536 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82933)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1270386 (= res!845456 (and (= (size!40536 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40535 _keys!1364) (size!40536 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270387 () Bool)

(declare-fun e!724193 () Bool)

(assert (=> b!1270387 (= e!724193 (and e!724191 mapRes!50857))))

(declare-fun condMapEmpty!50857 () Bool)

(declare-fun mapDefault!50857 () ValueCell!15572)

