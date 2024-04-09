; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107274 () Bool)

(assert start!107274)

(declare-fun b!1271067 () Bool)

(declare-fun e!724761 () Bool)

(declare-fun tp_is_empty!32927 () Bool)

(assert (=> b!1271067 (= e!724761 tp_is_empty!32927)))

(declare-fun b!1271068 () Bool)

(declare-fun res!845796 () Bool)

(declare-fun e!724759 () Bool)

(assert (=> b!1271068 (=> (not res!845796) (not e!724759))))

(declare-datatypes ((array!83067 0))(
  ( (array!83068 (arr!40066 (Array (_ BitVec 32) (_ BitVec 64))) (size!40603 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83067)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83067 (_ BitVec 32)) Bool)

(assert (=> b!1271068 (= res!845796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271069 () Bool)

(declare-fun res!845797 () Bool)

(assert (=> b!1271069 (=> (not res!845797) (not e!724759))))

(declare-datatypes ((V!49095 0))(
  ( (V!49096 (val!16538 Int)) )
))
(declare-datatypes ((ValueCell!15610 0))(
  ( (ValueCellFull!15610 (v!19173 V!49095)) (EmptyCell!15610) )
))
(declare-datatypes ((array!83069 0))(
  ( (array!83070 (arr!40067 (Array (_ BitVec 32) ValueCell!15610)) (size!40604 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83069)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271069 (= res!845797 (and (= (size!40604 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40603 _keys!1364) (size!40604 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845798 () Bool)

(assert (=> start!107274 (=> (not res!845798) (not e!724759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107274 (= res!845798 (validMask!0 mask!1730))))

(assert (=> start!107274 e!724759))

(declare-fun e!724762 () Bool)

(declare-fun array_inv!30419 (array!83069) Bool)

(assert (=> start!107274 (and (array_inv!30419 _values!1134) e!724762)))

(assert (=> start!107274 true))

(declare-fun array_inv!30420 (array!83067) Bool)

(assert (=> start!107274 (array_inv!30420 _keys!1364)))

(declare-fun mapNonEmpty!50971 () Bool)

(declare-fun mapRes!50971 () Bool)

(declare-fun tp!97313 () Bool)

(declare-fun e!724760 () Bool)

(assert (=> mapNonEmpty!50971 (= mapRes!50971 (and tp!97313 e!724760))))

(declare-fun mapValue!50971 () ValueCell!15610)

(declare-fun mapKey!50971 () (_ BitVec 32))

(declare-fun mapRest!50971 () (Array (_ BitVec 32) ValueCell!15610))

(assert (=> mapNonEmpty!50971 (= (arr!40067 _values!1134) (store mapRest!50971 mapKey!50971 mapValue!50971))))

(declare-fun mapIsEmpty!50971 () Bool)

(assert (=> mapIsEmpty!50971 mapRes!50971))

(declare-fun b!1271070 () Bool)

(assert (=> b!1271070 (= e!724762 (and e!724761 mapRes!50971))))

(declare-fun condMapEmpty!50971 () Bool)

(declare-fun mapDefault!50971 () ValueCell!15610)

