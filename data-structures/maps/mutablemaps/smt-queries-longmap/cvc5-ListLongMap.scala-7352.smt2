; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93852 () Bool)

(assert start!93852)

(declare-fun b_free!21289 () Bool)

(declare-fun b_next!21289 () Bool)

(assert (=> start!93852 (= b_free!21289 (not b_next!21289))))

(declare-fun tp!75291 () Bool)

(declare-fun b_and!34021 () Bool)

(assert (=> start!93852 (= tp!75291 b_and!34021)))

(declare-fun b!1061046 () Bool)

(declare-fun res!708686 () Bool)

(declare-fun e!604217 () Bool)

(assert (=> b!1061046 (=> (not res!708686) (not e!604217))))

(declare-datatypes ((array!67188 0))(
  ( (array!67189 (arr!32298 (Array (_ BitVec 32) (_ BitVec 64))) (size!32835 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67188)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67188 (_ BitVec 32)) Bool)

(assert (=> b!1061046 (= res!708686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708685 () Bool)

(assert (=> start!93852 (=> (not res!708685) (not e!604217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93852 (= res!708685 (validMask!0 mask!1515))))

(assert (=> start!93852 e!604217))

(assert (=> start!93852 true))

(declare-fun tp_is_empty!25099 () Bool)

(assert (=> start!93852 tp_is_empty!25099))

(declare-datatypes ((V!38601 0))(
  ( (V!38602 (val!12600 Int)) )
))
(declare-datatypes ((ValueCell!11846 0))(
  ( (ValueCellFull!11846 (v!15211 V!38601)) (EmptyCell!11846) )
))
(declare-datatypes ((array!67190 0))(
  ( (array!67191 (arr!32299 (Array (_ BitVec 32) ValueCell!11846)) (size!32836 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67190)

(declare-fun e!604215 () Bool)

(declare-fun array_inv!24868 (array!67190) Bool)

(assert (=> start!93852 (and (array_inv!24868 _values!955) e!604215)))

(assert (=> start!93852 tp!75291))

(declare-fun array_inv!24869 (array!67188) Bool)

(assert (=> start!93852 (array_inv!24869 _keys!1163)))

(declare-fun b!1061047 () Bool)

(declare-fun e!604216 () Bool)

(assert (=> b!1061047 (= e!604216 tp_is_empty!25099)))

(declare-fun b!1061048 () Bool)

(assert (=> b!1061048 (= e!604217 false)))

(declare-datatypes ((tuple2!16020 0))(
  ( (tuple2!16021 (_1!8020 (_ BitVec 64)) (_2!8020 V!38601)) )
))
(declare-datatypes ((List!22633 0))(
  ( (Nil!22630) (Cons!22629 (h!23838 tuple2!16020) (t!31949 List!22633)) )
))
(declare-datatypes ((ListLongMap!14001 0))(
  ( (ListLongMap!14002 (toList!7016 List!22633)) )
))
(declare-fun lt!467444 () ListLongMap!14001)

(declare-fun minValue!907 () V!38601)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38601)

(declare-fun getCurrentListMapNoExtraKeys!3580 (array!67188 array!67190 (_ BitVec 32) (_ BitVec 32) V!38601 V!38601 (_ BitVec 32) Int) ListLongMap!14001)

(assert (=> b!1061048 (= lt!467444 (getCurrentListMapNoExtraKeys!3580 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38601)

(declare-fun lt!467443 () ListLongMap!14001)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061048 (= lt!467443 (getCurrentListMapNoExtraKeys!3580 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39319 () Bool)

(declare-fun mapRes!39319 () Bool)

(assert (=> mapIsEmpty!39319 mapRes!39319))

(declare-fun b!1061049 () Bool)

(declare-fun res!708687 () Bool)

(assert (=> b!1061049 (=> (not res!708687) (not e!604217))))

(declare-datatypes ((List!22634 0))(
  ( (Nil!22631) (Cons!22630 (h!23839 (_ BitVec 64)) (t!31950 List!22634)) )
))
(declare-fun arrayNoDuplicates!0 (array!67188 (_ BitVec 32) List!22634) Bool)

(assert (=> b!1061049 (= res!708687 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22631))))

(declare-fun b!1061050 () Bool)

(declare-fun e!604213 () Bool)

(assert (=> b!1061050 (= e!604213 tp_is_empty!25099)))

(declare-fun b!1061051 () Bool)

(assert (=> b!1061051 (= e!604215 (and e!604216 mapRes!39319))))

(declare-fun condMapEmpty!39319 () Bool)

(declare-fun mapDefault!39319 () ValueCell!11846)

