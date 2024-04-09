; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93778 () Bool)

(assert start!93778)

(declare-fun b_free!21227 () Bool)

(declare-fun b_next!21227 () Bool)

(assert (=> start!93778 (= b_free!21227 (not b_next!21227))))

(declare-fun tp!75102 () Bool)

(declare-fun b_and!33955 () Bool)

(assert (=> start!93778 (= tp!75102 b_and!33955)))

(declare-fun b!1060322 () Bool)

(declare-fun res!708285 () Bool)

(declare-fun e!603702 () Bool)

(assert (=> b!1060322 (=> (not res!708285) (not e!603702))))

(declare-datatypes ((array!67072 0))(
  ( (array!67073 (arr!32241 (Array (_ BitVec 32) (_ BitVec 64))) (size!32778 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67072)

(declare-datatypes ((List!22592 0))(
  ( (Nil!22589) (Cons!22588 (h!23797 (_ BitVec 64)) (t!31906 List!22592)) )
))
(declare-fun arrayNoDuplicates!0 (array!67072 (_ BitVec 32) List!22592) Bool)

(assert (=> b!1060322 (= res!708285 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22589))))

(declare-fun b!1060323 () Bool)

(assert (=> b!1060323 (= e!603702 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38517 0))(
  ( (V!38518 (val!12569 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38517)

(declare-datatypes ((ValueCell!11815 0))(
  ( (ValueCellFull!11815 (v!15180 V!38517)) (EmptyCell!11815) )
))
(declare-datatypes ((array!67074 0))(
  ( (array!67075 (arr!32242 (Array (_ BitVec 32) ValueCell!11815)) (size!32779 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67074)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38517)

(declare-datatypes ((tuple2!15980 0))(
  ( (tuple2!15981 (_1!8000 (_ BitVec 64)) (_2!8000 V!38517)) )
))
(declare-datatypes ((List!22593 0))(
  ( (Nil!22590) (Cons!22589 (h!23798 tuple2!15980) (t!31907 List!22593)) )
))
(declare-datatypes ((ListLongMap!13961 0))(
  ( (ListLongMap!13962 (toList!6996 List!22593)) )
))
(declare-fun lt!467237 () ListLongMap!13961)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3560 (array!67072 array!67074 (_ BitVec 32) (_ BitVec 32) V!38517 V!38517 (_ BitVec 32) Int) ListLongMap!13961)

(assert (=> b!1060323 (= lt!467237 (getCurrentListMapNoExtraKeys!3560 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!708287 () Bool)

(assert (=> start!93778 (=> (not res!708287) (not e!603702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93778 (= res!708287 (validMask!0 mask!1515))))

(assert (=> start!93778 e!603702))

(assert (=> start!93778 true))

(declare-fun tp_is_empty!25037 () Bool)

(assert (=> start!93778 tp_is_empty!25037))

(declare-fun e!603700 () Bool)

(declare-fun array_inv!24832 (array!67074) Bool)

(assert (=> start!93778 (and (array_inv!24832 _values!955) e!603700)))

(assert (=> start!93778 tp!75102))

(declare-fun array_inv!24833 (array!67072) Bool)

(assert (=> start!93778 (array_inv!24833 _keys!1163)))

(declare-fun b!1060324 () Bool)

(declare-fun e!603704 () Bool)

(declare-fun mapRes!39223 () Bool)

(assert (=> b!1060324 (= e!603700 (and e!603704 mapRes!39223))))

(declare-fun condMapEmpty!39223 () Bool)

(declare-fun mapDefault!39223 () ValueCell!11815)

