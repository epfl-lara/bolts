; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107294 () Bool)

(assert start!107294)

(declare-fun b!1271247 () Bool)

(declare-fun res!845887 () Bool)

(declare-fun e!724912 () Bool)

(assert (=> b!1271247 (=> (not res!845887) (not e!724912))))

(declare-datatypes ((V!49123 0))(
  ( (V!49124 (val!16548 Int)) )
))
(declare-datatypes ((ValueCell!15620 0))(
  ( (ValueCellFull!15620 (v!19183 V!49123)) (EmptyCell!15620) )
))
(declare-datatypes ((array!83105 0))(
  ( (array!83106 (arr!40085 (Array (_ BitVec 32) ValueCell!15620)) (size!40622 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83105)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83107 0))(
  ( (array!83108 (arr!40086 (Array (_ BitVec 32) (_ BitVec 64))) (size!40623 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83107)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271247 (= res!845887 (and (= (size!40622 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40623 _keys!1364) (size!40622 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271248 () Bool)

(declare-fun e!724909 () Bool)

(declare-fun e!724911 () Bool)

(declare-fun mapRes!51001 () Bool)

(assert (=> b!1271248 (= e!724909 (and e!724911 mapRes!51001))))

(declare-fun condMapEmpty!51001 () Bool)

(declare-fun mapDefault!51001 () ValueCell!15620)

