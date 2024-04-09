; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93768 () Bool)

(assert start!93768)

(declare-fun b_free!21217 () Bool)

(declare-fun b_next!21217 () Bool)

(assert (=> start!93768 (= b_free!21217 (not b_next!21217))))

(declare-fun tp!75071 () Bool)

(declare-fun b_and!33945 () Bool)

(assert (=> start!93768 (= tp!75071 b_and!33945)))

(declare-fun mapIsEmpty!39208 () Bool)

(declare-fun mapRes!39208 () Bool)

(assert (=> mapIsEmpty!39208 mapRes!39208))

(declare-fun b!1060217 () Bool)

(declare-fun res!708225 () Bool)

(declare-fun e!603625 () Bool)

(assert (=> b!1060217 (=> (not res!708225) (not e!603625))))

(declare-datatypes ((array!67054 0))(
  ( (array!67055 (arr!32232 (Array (_ BitVec 32) (_ BitVec 64))) (size!32769 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67054)

(declare-datatypes ((List!22586 0))(
  ( (Nil!22583) (Cons!22582 (h!23791 (_ BitVec 64)) (t!31900 List!22586)) )
))
(declare-fun arrayNoDuplicates!0 (array!67054 (_ BitVec 32) List!22586) Bool)

(assert (=> b!1060217 (= res!708225 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22583))))

(declare-fun b!1060218 () Bool)

(declare-fun e!603629 () Bool)

(declare-fun tp_is_empty!25027 () Bool)

(assert (=> b!1060218 (= e!603629 tp_is_empty!25027)))

(declare-fun b!1060219 () Bool)

(declare-fun res!708227 () Bool)

(assert (=> b!1060219 (=> (not res!708227) (not e!603625))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67054 (_ BitVec 32)) Bool)

(assert (=> b!1060219 (= res!708227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708226 () Bool)

(assert (=> start!93768 (=> (not res!708226) (not e!603625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93768 (= res!708226 (validMask!0 mask!1515))))

(assert (=> start!93768 e!603625))

(assert (=> start!93768 true))

(assert (=> start!93768 tp_is_empty!25027))

(declare-datatypes ((V!38505 0))(
  ( (V!38506 (val!12564 Int)) )
))
(declare-datatypes ((ValueCell!11810 0))(
  ( (ValueCellFull!11810 (v!15175 V!38505)) (EmptyCell!11810) )
))
(declare-datatypes ((array!67056 0))(
  ( (array!67057 (arr!32233 (Array (_ BitVec 32) ValueCell!11810)) (size!32770 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67056)

(declare-fun e!603627 () Bool)

(declare-fun array_inv!24826 (array!67056) Bool)

(assert (=> start!93768 (and (array_inv!24826 _values!955) e!603627)))

(assert (=> start!93768 tp!75071))

(declare-fun array_inv!24827 (array!67054) Bool)

(assert (=> start!93768 (array_inv!24827 _keys!1163)))

(declare-fun b!1060220 () Bool)

(declare-fun e!603628 () Bool)

(assert (=> b!1060220 (= e!603628 tp_is_empty!25027)))

(declare-fun b!1060221 () Bool)

(declare-fun res!708228 () Bool)

(assert (=> b!1060221 (=> (not res!708228) (not e!603625))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060221 (= res!708228 (and (= (size!32770 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32769 _keys!1163) (size!32770 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060222 () Bool)

(assert (=> b!1060222 (= e!603627 (and e!603628 mapRes!39208))))

(declare-fun condMapEmpty!39208 () Bool)

(declare-fun mapDefault!39208 () ValueCell!11810)

