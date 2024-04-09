; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107220 () Bool)

(assert start!107220)

(declare-fun mapIsEmpty!50890 () Bool)

(declare-fun mapRes!50890 () Bool)

(assert (=> mapIsEmpty!50890 mapRes!50890))

(declare-fun b!1270581 () Bool)

(declare-fun res!845555 () Bool)

(declare-fun e!724358 () Bool)

(assert (=> b!1270581 (=> (not res!845555) (not e!724358))))

(declare-datatypes ((V!49023 0))(
  ( (V!49024 (val!16511 Int)) )
))
(declare-datatypes ((ValueCell!15583 0))(
  ( (ValueCellFull!15583 (v!19146 V!49023)) (EmptyCell!15583) )
))
(declare-datatypes ((array!82971 0))(
  ( (array!82972 (arr!40018 (Array (_ BitVec 32) ValueCell!15583)) (size!40555 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82971)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82973 0))(
  ( (array!82974 (arr!40019 (Array (_ BitVec 32) (_ BitVec 64))) (size!40556 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82973)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270581 (= res!845555 (and (= (size!40555 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40556 _keys!1364) (size!40555 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270583 () Bool)

(declare-fun e!724356 () Bool)

(declare-fun tp_is_empty!32873 () Bool)

(assert (=> b!1270583 (= e!724356 tp_is_empty!32873)))

(declare-fun b!1270584 () Bool)

(declare-fun e!724355 () Bool)

(declare-fun e!724357 () Bool)

(assert (=> b!1270584 (= e!724355 (and e!724357 mapRes!50890))))

(declare-fun condMapEmpty!50890 () Bool)

(declare-fun mapDefault!50890 () ValueCell!15583)

