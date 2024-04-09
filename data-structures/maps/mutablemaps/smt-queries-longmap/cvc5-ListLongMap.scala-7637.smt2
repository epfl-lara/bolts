; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96178 () Bool)

(assert start!96178)

(declare-fun b_free!22795 () Bool)

(declare-fun b_next!22795 () Bool)

(assert (=> start!96178 (= b_free!22795 (not b_next!22795))))

(declare-fun tp!80235 () Bool)

(declare-fun b_and!36283 () Bool)

(assert (=> start!96178 (= tp!80235 b_and!36283)))

(declare-fun b!1091189 () Bool)

(declare-fun res!728118 () Bool)

(declare-fun e!623244 () Bool)

(assert (=> b!1091189 (=> (not res!728118) (not e!623244))))

(declare-datatypes ((array!70480 0))(
  ( (array!70481 (arr!33910 (Array (_ BitVec 32) (_ BitVec 64))) (size!34447 (_ BitVec 32))) )
))
(declare-fun lt!487222 () array!70480)

(declare-datatypes ((List!23823 0))(
  ( (Nil!23820) (Cons!23819 (h!25028 (_ BitVec 64)) (t!33683 List!23823)) )
))
(declare-fun arrayNoDuplicates!0 (array!70480 (_ BitVec 32) List!23823) Bool)

(assert (=> b!1091189 (= res!728118 (arrayNoDuplicates!0 lt!487222 #b00000000000000000000000000000000 Nil!23820))))

(declare-fun mapNonEmpty!41950 () Bool)

(declare-fun mapRes!41950 () Bool)

(declare-fun tp!80234 () Bool)

(declare-fun e!623246 () Bool)

(assert (=> mapNonEmpty!41950 (= mapRes!41950 (and tp!80234 e!623246))))

(declare-datatypes ((V!40857 0))(
  ( (V!40858 (val!13455 Int)) )
))
(declare-datatypes ((ValueCell!12689 0))(
  ( (ValueCellFull!12689 (v!16077 V!40857)) (EmptyCell!12689) )
))
(declare-datatypes ((array!70482 0))(
  ( (array!70483 (arr!33911 (Array (_ BitVec 32) ValueCell!12689)) (size!34448 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70482)

(declare-fun mapValue!41950 () ValueCell!12689)

(declare-fun mapRest!41950 () (Array (_ BitVec 32) ValueCell!12689))

(declare-fun mapKey!41950 () (_ BitVec 32))

(assert (=> mapNonEmpty!41950 (= (arr!33911 _values!874) (store mapRest!41950 mapKey!41950 mapValue!41950))))

(declare-fun b!1091190 () Bool)

(declare-fun res!728114 () Bool)

(declare-fun e!623241 () Bool)

(assert (=> b!1091190 (=> (not res!728114) (not e!623241))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70480)

(assert (=> b!1091190 (= res!728114 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34447 _keys!1070))))))

(declare-fun res!728110 () Bool)

(assert (=> start!96178 (=> (not res!728110) (not e!623241))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96178 (= res!728110 (validMask!0 mask!1414))))

(assert (=> start!96178 e!623241))

(assert (=> start!96178 tp!80235))

(assert (=> start!96178 true))

(declare-fun tp_is_empty!26797 () Bool)

(assert (=> start!96178 tp_is_empty!26797))

(declare-fun array_inv!26006 (array!70480) Bool)

(assert (=> start!96178 (array_inv!26006 _keys!1070)))

(declare-fun e!623242 () Bool)

(declare-fun array_inv!26007 (array!70482) Bool)

(assert (=> start!96178 (and (array_inv!26007 _values!874) e!623242)))

(declare-fun b!1091191 () Bool)

(declare-fun res!728115 () Bool)

(assert (=> b!1091191 (=> (not res!728115) (not e!623241))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091191 (= res!728115 (validKeyInArray!0 k!904))))

(declare-fun b!1091192 () Bool)

(declare-fun e!623247 () Bool)

(declare-fun e!623243 () Bool)

(assert (=> b!1091192 (= e!623247 e!623243)))

(declare-fun res!728119 () Bool)

(assert (=> b!1091192 (=> res!728119 e!623243)))

(assert (=> b!1091192 (= res!728119 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17184 0))(
  ( (tuple2!17185 (_1!8602 (_ BitVec 64)) (_2!8602 V!40857)) )
))
(declare-datatypes ((List!23824 0))(
  ( (Nil!23821) (Cons!23820 (h!25029 tuple2!17184) (t!33684 List!23824)) )
))
(declare-datatypes ((ListLongMap!15165 0))(
  ( (ListLongMap!15166 (toList!7598 List!23824)) )
))
(declare-fun lt!487226 () ListLongMap!15165)

(declare-fun lt!487224 () ListLongMap!15165)

(assert (=> b!1091192 (= lt!487226 lt!487224)))

(declare-fun lt!487221 () ListLongMap!15165)

(declare-fun lt!487230 () tuple2!17184)

(declare-fun +!3305 (ListLongMap!15165 tuple2!17184) ListLongMap!15165)

(assert (=> b!1091192 (= lt!487224 (+!3305 lt!487221 lt!487230))))

(declare-fun lt!487223 () ListLongMap!15165)

(declare-fun lt!487227 () ListLongMap!15165)

(assert (=> b!1091192 (= lt!487223 lt!487227)))

(declare-fun lt!487228 () ListLongMap!15165)

(assert (=> b!1091192 (= lt!487227 (+!3305 lt!487228 lt!487230))))

(declare-fun lt!487225 () ListLongMap!15165)

(assert (=> b!1091192 (= lt!487223 (+!3305 lt!487225 lt!487230))))

(declare-fun minValue!831 () V!40857)

(assert (=> b!1091192 (= lt!487230 (tuple2!17185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091193 () Bool)

(declare-fun res!728112 () Bool)

(assert (=> b!1091193 (=> (not res!728112) (not e!623241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70480 (_ BitVec 32)) Bool)

(assert (=> b!1091193 (= res!728112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091194 () Bool)

(declare-fun e!623248 () Bool)

(assert (=> b!1091194 (= e!623248 tp_is_empty!26797)))

(declare-fun b!1091195 () Bool)

(assert (=> b!1091195 (= e!623241 e!623244)))

(declare-fun res!728116 () Bool)

(assert (=> b!1091195 (=> (not res!728116) (not e!623244))))

(assert (=> b!1091195 (= res!728116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487222 mask!1414))))

(assert (=> b!1091195 (= lt!487222 (array!70481 (store (arr!33910 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34447 _keys!1070)))))

(declare-fun b!1091196 () Bool)

(declare-fun res!728111 () Bool)

(assert (=> b!1091196 (=> (not res!728111) (not e!623241))))

(assert (=> b!1091196 (= res!728111 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23820))))

(declare-fun b!1091197 () Bool)

(declare-fun res!728117 () Bool)

(assert (=> b!1091197 (=> (not res!728117) (not e!623241))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091197 (= res!728117 (and (= (size!34448 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34447 _keys!1070) (size!34448 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091198 () Bool)

(declare-fun res!728120 () Bool)

(assert (=> b!1091198 (=> (not res!728120) (not e!623241))))

(assert (=> b!1091198 (= res!728120 (= (select (arr!33910 _keys!1070) i!650) k!904))))

(declare-fun b!1091199 () Bool)

(assert (=> b!1091199 (= e!623242 (and e!623248 mapRes!41950))))

(declare-fun condMapEmpty!41950 () Bool)

(declare-fun mapDefault!41950 () ValueCell!12689)

