; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107306 () Bool)

(assert start!107306)

(declare-fun mapNonEmpty!51019 () Bool)

(declare-fun mapRes!51019 () Bool)

(declare-fun tp!97361 () Bool)

(declare-fun e!725003 () Bool)

(assert (=> mapNonEmpty!51019 (= mapRes!51019 (and tp!97361 e!725003))))

(declare-datatypes ((V!49139 0))(
  ( (V!49140 (val!16554 Int)) )
))
(declare-datatypes ((ValueCell!15626 0))(
  ( (ValueCellFull!15626 (v!19189 V!49139)) (EmptyCell!15626) )
))
(declare-datatypes ((array!83125 0))(
  ( (array!83126 (arr!40095 (Array (_ BitVec 32) ValueCell!15626)) (size!40632 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83125)

(declare-fun mapKey!51019 () (_ BitVec 32))

(declare-fun mapRest!51019 () (Array (_ BitVec 32) ValueCell!15626))

(declare-fun mapValue!51019 () ValueCell!15626)

(assert (=> mapNonEmpty!51019 (= (arr!40095 _values!1134) (store mapRest!51019 mapKey!51019 mapValue!51019))))

(declare-fun b!1271355 () Bool)

(declare-fun res!845940 () Bool)

(declare-fun e!725002 () Bool)

(assert (=> b!1271355 (=> (not res!845940) (not e!725002))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83127 0))(
  ( (array!83128 (arr!40096 (Array (_ BitVec 32) (_ BitVec 64))) (size!40633 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83127)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271355 (= res!845940 (and (= (size!40632 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40633 _keys!1364) (size!40632 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271356 () Bool)

(declare-fun res!845941 () Bool)

(assert (=> b!1271356 (=> (not res!845941) (not e!725002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83127 (_ BitVec 32)) Bool)

(assert (=> b!1271356 (= res!845941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845942 () Bool)

(assert (=> start!107306 (=> (not res!845942) (not e!725002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107306 (= res!845942 (validMask!0 mask!1730))))

(assert (=> start!107306 e!725002))

(declare-fun e!724999 () Bool)

(declare-fun array_inv!30437 (array!83125) Bool)

(assert (=> start!107306 (and (array_inv!30437 _values!1134) e!724999)))

(assert (=> start!107306 true))

(declare-fun array_inv!30438 (array!83127) Bool)

(assert (=> start!107306 (array_inv!30438 _keys!1364)))

(declare-fun mapIsEmpty!51019 () Bool)

(assert (=> mapIsEmpty!51019 mapRes!51019))

(declare-fun b!1271357 () Bool)

(declare-fun e!725000 () Bool)

(declare-fun tp_is_empty!32959 () Bool)

(assert (=> b!1271357 (= e!725000 tp_is_empty!32959)))

(declare-fun b!1271358 () Bool)

(assert (=> b!1271358 (= e!725003 tp_is_empty!32959)))

(declare-fun b!1271359 () Bool)

(assert (=> b!1271359 (= e!724999 (and e!725000 mapRes!51019))))

(declare-fun condMapEmpty!51019 () Bool)

(declare-fun mapDefault!51019 () ValueCell!15626)

