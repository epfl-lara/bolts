; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107258 () Bool)

(assert start!107258)

(declare-fun b!1270923 () Bool)

(declare-fun e!724642 () Bool)

(declare-fun tp_is_empty!32911 () Bool)

(assert (=> b!1270923 (= e!724642 tp_is_empty!32911)))

(declare-fun b!1270924 () Bool)

(declare-fun res!845724 () Bool)

(declare-fun e!724640 () Bool)

(assert (=> b!1270924 (=> (not res!845724) (not e!724640))))

(declare-datatypes ((array!83039 0))(
  ( (array!83040 (arr!40052 (Array (_ BitVec 32) (_ BitVec 64))) (size!40589 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83039)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83039 (_ BitVec 32)) Bool)

(assert (=> b!1270924 (= res!845724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270925 () Bool)

(declare-fun res!845725 () Bool)

(assert (=> b!1270925 (=> (not res!845725) (not e!724640))))

(declare-datatypes ((V!49075 0))(
  ( (V!49076 (val!16530 Int)) )
))
(declare-datatypes ((ValueCell!15602 0))(
  ( (ValueCellFull!15602 (v!19165 V!49075)) (EmptyCell!15602) )
))
(declare-datatypes ((array!83041 0))(
  ( (array!83042 (arr!40053 (Array (_ BitVec 32) ValueCell!15602)) (size!40590 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83041)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270925 (= res!845725 (and (= (size!40590 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40589 _keys!1364) (size!40590 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270926 () Bool)

(declare-fun e!724639 () Bool)

(assert (=> b!1270926 (= e!724639 tp_is_empty!32911)))

(declare-fun b!1270928 () Bool)

(declare-fun e!724643 () Bool)

(declare-fun mapRes!50947 () Bool)

(assert (=> b!1270928 (= e!724643 (and e!724639 mapRes!50947))))

(declare-fun condMapEmpty!50947 () Bool)

(declare-fun mapDefault!50947 () ValueCell!15602)

