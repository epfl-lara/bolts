; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93766 () Bool)

(assert start!93766)

(declare-fun b_free!21215 () Bool)

(declare-fun b_next!21215 () Bool)

(assert (=> start!93766 (= b_free!21215 (not b_next!21215))))

(declare-fun tp!75066 () Bool)

(declare-fun b_and!33943 () Bool)

(assert (=> start!93766 (= tp!75066 b_and!33943)))

(declare-fun b!1060196 () Bool)

(declare-fun res!708213 () Bool)

(declare-fun e!603614 () Bool)

(assert (=> b!1060196 (=> (not res!708213) (not e!603614))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38501 0))(
  ( (V!38502 (val!12563 Int)) )
))
(declare-datatypes ((ValueCell!11809 0))(
  ( (ValueCellFull!11809 (v!15174 V!38501)) (EmptyCell!11809) )
))
(declare-datatypes ((array!67050 0))(
  ( (array!67051 (arr!32230 (Array (_ BitVec 32) ValueCell!11809)) (size!32767 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67050)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67052 0))(
  ( (array!67053 (arr!32231 (Array (_ BitVec 32) (_ BitVec 64))) (size!32768 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67052)

(assert (=> b!1060196 (= res!708213 (and (= (size!32767 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32768 _keys!1163) (size!32767 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060197 () Bool)

(assert (=> b!1060197 (= e!603614 false)))

(declare-fun zeroValueBefore!47 () V!38501)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38501)

(declare-datatypes ((tuple2!15972 0))(
  ( (tuple2!15973 (_1!7996 (_ BitVec 64)) (_2!7996 V!38501)) )
))
(declare-datatypes ((List!22585 0))(
  ( (Nil!22582) (Cons!22581 (h!23790 tuple2!15972) (t!31899 List!22585)) )
))
(declare-datatypes ((ListLongMap!13953 0))(
  ( (ListLongMap!13954 (toList!6992 List!22585)) )
))
(declare-fun lt!467219 () ListLongMap!13953)

(declare-fun getCurrentListMapNoExtraKeys!3556 (array!67052 array!67050 (_ BitVec 32) (_ BitVec 32) V!38501 V!38501 (_ BitVec 32) Int) ListLongMap!13953)

(assert (=> b!1060197 (= lt!467219 (getCurrentListMapNoExtraKeys!3556 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060198 () Bool)

(declare-fun e!603611 () Bool)

(declare-fun tp_is_empty!25025 () Bool)

(assert (=> b!1060198 (= e!603611 tp_is_empty!25025)))

(declare-fun b!1060199 () Bool)

(declare-fun e!603613 () Bool)

(assert (=> b!1060199 (= e!603613 tp_is_empty!25025)))

(declare-fun b!1060200 () Bool)

(declare-fun e!603612 () Bool)

(declare-fun mapRes!39205 () Bool)

(assert (=> b!1060200 (= e!603612 (and e!603613 mapRes!39205))))

(declare-fun condMapEmpty!39205 () Bool)

(declare-fun mapDefault!39205 () ValueCell!11809)

