; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106944 () Bool)

(assert start!106944)

(declare-fun b!1267979 () Bool)

(declare-fun e!722480 () Bool)

(declare-fun tp_is_empty!32635 () Bool)

(assert (=> b!1267979 (= e!722480 tp_is_empty!32635)))

(declare-fun mapNonEmpty!50521 () Bool)

(declare-fun mapRes!50521 () Bool)

(declare-fun tp!96701 () Bool)

(declare-fun e!722481 () Bool)

(assert (=> mapNonEmpty!50521 (= mapRes!50521 (and tp!96701 e!722481))))

(declare-datatypes ((V!48707 0))(
  ( (V!48708 (val!16392 Int)) )
))
(declare-datatypes ((ValueCell!15464 0))(
  ( (ValueCellFull!15464 (v!19026 V!48707)) (EmptyCell!15464) )
))
(declare-datatypes ((array!82519 0))(
  ( (array!82520 (arr!39796 (Array (_ BitVec 32) ValueCell!15464)) (size!40333 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82519)

(declare-fun mapRest!50521 () (Array (_ BitVec 32) ValueCell!15464))

(declare-fun mapValue!50521 () ValueCell!15464)

(declare-fun mapKey!50521 () (_ BitVec 32))

(assert (=> mapNonEmpty!50521 (= (arr!39796 _values!1134) (store mapRest!50521 mapKey!50521 mapValue!50521))))

(declare-fun b!1267980 () Bool)

(declare-fun res!844080 () Bool)

(declare-fun e!722483 () Bool)

(assert (=> b!1267980 (=> (not res!844080) (not e!722483))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82521 0))(
  ( (array!82522 (arr!39797 (Array (_ BitVec 32) (_ BitVec 64))) (size!40334 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82521)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1267980 (= res!844080 (and (= (size!40333 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40334 _keys!1364) (size!40333 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1267981 () Bool)

(assert (=> b!1267981 (= e!722483 (bvsgt #b00000000000000000000000000000000 (size!40334 _keys!1364)))))

(declare-fun b!1267982 () Bool)

(assert (=> b!1267982 (= e!722481 tp_is_empty!32635)))

(declare-fun b!1267983 () Bool)

(declare-fun e!722482 () Bool)

(assert (=> b!1267983 (= e!722482 (and e!722480 mapRes!50521))))

(declare-fun condMapEmpty!50521 () Bool)

(declare-fun mapDefault!50521 () ValueCell!15464)

