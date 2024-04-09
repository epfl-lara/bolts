; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95672 () Bool)

(assert start!95672)

(declare-fun b_free!22289 () Bool)

(declare-fun b_next!22289 () Bool)

(assert (=> start!95672 (= b_free!22289 (not b_next!22289))))

(declare-fun tp!78717 () Bool)

(declare-fun b_and!35285 () Bool)

(assert (=> start!95672 (= tp!78717 b_and!35285)))

(declare-fun b!1080667 () Bool)

(declare-fun res!720359 () Bool)

(declare-fun e!617794 () Bool)

(assert (=> b!1080667 (=> (not res!720359) (not e!617794))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69488 0))(
  ( (array!69489 (arr!33414 (Array (_ BitVec 32) (_ BitVec 64))) (size!33951 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69488)

(assert (=> b!1080667 (= res!720359 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33951 _keys!1070))))))

(declare-fun b!1080668 () Bool)

(declare-fun res!720364 () Bool)

(assert (=> b!1080668 (=> (not res!720364) (not e!617794))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080668 (= res!720364 (validKeyInArray!0 k!904))))

(declare-fun b!1080669 () Bool)

(declare-fun res!720360 () Bool)

(assert (=> b!1080669 (=> (not res!720360) (not e!617794))))

(assert (=> b!1080669 (= res!720360 (= (select (arr!33414 _keys!1070) i!650) k!904))))

(declare-fun b!1080670 () Bool)

(declare-fun res!720365 () Bool)

(assert (=> b!1080670 (=> (not res!720365) (not e!617794))))

(declare-datatypes ((List!23417 0))(
  ( (Nil!23414) (Cons!23413 (h!24622 (_ BitVec 64)) (t!32783 List!23417)) )
))
(declare-fun arrayNoDuplicates!0 (array!69488 (_ BitVec 32) List!23417) Bool)

(assert (=> b!1080670 (= res!720365 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23414))))

(declare-fun b!1080671 () Bool)

(declare-fun e!617793 () Bool)

(assert (=> b!1080671 (= e!617793 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40181 0))(
  ( (V!40182 (val!13202 Int)) )
))
(declare-fun minValue!831 () V!40181)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16794 0))(
  ( (tuple2!16795 (_1!8407 (_ BitVec 64)) (_2!8407 V!40181)) )
))
(declare-datatypes ((List!23418 0))(
  ( (Nil!23415) (Cons!23414 (h!24623 tuple2!16794) (t!32784 List!23418)) )
))
(declare-datatypes ((ListLongMap!14775 0))(
  ( (ListLongMap!14776 (toList!7403 List!23418)) )
))
(declare-fun lt!479065 () ListLongMap!14775)

(declare-fun zeroValue!831 () V!40181)

(declare-datatypes ((ValueCell!12436 0))(
  ( (ValueCellFull!12436 (v!15824 V!40181)) (EmptyCell!12436) )
))
(declare-datatypes ((array!69490 0))(
  ( (array!69491 (arr!33415 (Array (_ BitVec 32) ValueCell!12436)) (size!33952 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69490)

(declare-fun getCurrentListMapNoExtraKeys!3914 (array!69488 array!69490 (_ BitVec 32) (_ BitVec 32) V!40181 V!40181 (_ BitVec 32) Int) ListLongMap!14775)

(assert (=> b!1080671 (= lt!479065 (getCurrentListMapNoExtraKeys!3914 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080671 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35485 0))(
  ( (Unit!35486) )
))
(declare-fun lt!479066 () Unit!35485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69488 (_ BitVec 64) (_ BitVec 32)) Unit!35485)

(assert (=> b!1080671 (= lt!479066 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41191 () Bool)

(declare-fun mapRes!41191 () Bool)

(declare-fun tp!78716 () Bool)

(declare-fun e!617796 () Bool)

(assert (=> mapNonEmpty!41191 (= mapRes!41191 (and tp!78716 e!617796))))

(declare-fun mapRest!41191 () (Array (_ BitVec 32) ValueCell!12436))

(declare-fun mapKey!41191 () (_ BitVec 32))

(declare-fun mapValue!41191 () ValueCell!12436)

(assert (=> mapNonEmpty!41191 (= (arr!33415 _values!874) (store mapRest!41191 mapKey!41191 mapValue!41191))))

(declare-fun res!720363 () Bool)

(assert (=> start!95672 (=> (not res!720363) (not e!617794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95672 (= res!720363 (validMask!0 mask!1414))))

(assert (=> start!95672 e!617794))

(assert (=> start!95672 tp!78717))

(assert (=> start!95672 true))

(declare-fun tp_is_empty!26291 () Bool)

(assert (=> start!95672 tp_is_empty!26291))

(declare-fun array_inv!25660 (array!69488) Bool)

(assert (=> start!95672 (array_inv!25660 _keys!1070)))

(declare-fun e!617795 () Bool)

(declare-fun array_inv!25661 (array!69490) Bool)

(assert (=> start!95672 (and (array_inv!25661 _values!874) e!617795)))

(declare-fun b!1080672 () Bool)

(assert (=> b!1080672 (= e!617794 e!617793)))

(declare-fun res!720361 () Bool)

(assert (=> b!1080672 (=> (not res!720361) (not e!617793))))

(declare-fun lt!479064 () array!69488)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69488 (_ BitVec 32)) Bool)

(assert (=> b!1080672 (= res!720361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479064 mask!1414))))

(assert (=> b!1080672 (= lt!479064 (array!69489 (store (arr!33414 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33951 _keys!1070)))))

(declare-fun b!1080673 () Bool)

(declare-fun e!617792 () Bool)

(assert (=> b!1080673 (= e!617795 (and e!617792 mapRes!41191))))

(declare-fun condMapEmpty!41191 () Bool)

(declare-fun mapDefault!41191 () ValueCell!12436)

