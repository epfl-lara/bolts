; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107070 () Bool)

(assert start!107070)

(declare-fun b!1268907 () Bool)

(declare-fun res!844554 () Bool)

(declare-fun e!723231 () Bool)

(assert (=> b!1268907 (=> (not res!844554) (not e!723231))))

(declare-datatypes ((array!82689 0))(
  ( (array!82690 (arr!39877 (Array (_ BitVec 32) (_ BitVec 64))) (size!40414 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82689)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82689 (_ BitVec 32)) Bool)

(assert (=> b!1268907 (= res!844554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268908 () Bool)

(declare-fun res!844556 () Bool)

(assert (=> b!1268908 (=> (not res!844556) (not e!723231))))

(declare-datatypes ((V!48823 0))(
  ( (V!48824 (val!16436 Int)) )
))
(declare-datatypes ((ValueCell!15508 0))(
  ( (ValueCellFull!15508 (v!19071 V!48823)) (EmptyCell!15508) )
))
(declare-datatypes ((array!82691 0))(
  ( (array!82692 (arr!39878 (Array (_ BitVec 32) ValueCell!15508)) (size!40415 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82691)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268908 (= res!844556 (and (= (size!40415 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40414 _keys!1364) (size!40415 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50665 () Bool)

(declare-fun mapRes!50665 () Bool)

(assert (=> mapIsEmpty!50665 mapRes!50665))

(declare-fun b!1268909 () Bool)

(declare-fun e!723230 () Bool)

(declare-fun e!723229 () Bool)

(assert (=> b!1268909 (= e!723230 (and e!723229 mapRes!50665))))

(declare-fun condMapEmpty!50665 () Bool)

(declare-fun mapDefault!50665 () ValueCell!15508)

