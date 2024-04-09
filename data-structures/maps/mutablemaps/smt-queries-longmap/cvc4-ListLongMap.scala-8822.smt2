; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107196 () Bool)

(assert start!107196)

(declare-fun b!1270365 () Bool)

(declare-fun res!845445 () Bool)

(declare-fun e!724175 () Bool)

(assert (=> b!1270365 (=> (not res!845445) (not e!724175))))

(declare-datatypes ((V!48991 0))(
  ( (V!48992 (val!16499 Int)) )
))
(declare-datatypes ((ValueCell!15571 0))(
  ( (ValueCellFull!15571 (v!19134 V!48991)) (EmptyCell!15571) )
))
(declare-datatypes ((array!82927 0))(
  ( (array!82928 (arr!39996 (Array (_ BitVec 32) ValueCell!15571)) (size!40533 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82927)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82929 0))(
  ( (array!82930 (arr!39997 (Array (_ BitVec 32) (_ BitVec 64))) (size!40534 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82929)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270365 (= res!845445 (and (= (size!40533 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40534 _keys!1364) (size!40533 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270366 () Bool)

(declare-fun res!845446 () Bool)

(assert (=> b!1270366 (=> (not res!845446) (not e!724175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82929 (_ BitVec 32)) Bool)

(assert (=> b!1270366 (= res!845446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270367 () Bool)

(declare-fun e!724176 () Bool)

(declare-fun e!724174 () Bool)

(declare-fun mapRes!50854 () Bool)

(assert (=> b!1270367 (= e!724176 (and e!724174 mapRes!50854))))

(declare-fun condMapEmpty!50854 () Bool)

(declare-fun mapDefault!50854 () ValueCell!15571)

