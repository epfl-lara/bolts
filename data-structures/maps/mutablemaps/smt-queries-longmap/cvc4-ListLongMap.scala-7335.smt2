; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93742 () Bool)

(assert start!93742)

(declare-fun b_free!21191 () Bool)

(declare-fun b_next!21191 () Bool)

(assert (=> start!93742 (= b_free!21191 (not b_next!21191))))

(declare-fun tp!74994 () Bool)

(declare-fun b_and!33919 () Bool)

(assert (=> start!93742 (= tp!74994 b_and!33919)))

(declare-fun mapIsEmpty!39169 () Bool)

(declare-fun mapRes!39169 () Bool)

(assert (=> mapIsEmpty!39169 mapRes!39169))

(declare-fun b!1059945 () Bool)

(declare-fun e!603433 () Bool)

(declare-fun tp_is_empty!25001 () Bool)

(assert (=> b!1059945 (= e!603433 tp_is_empty!25001)))

(declare-fun b!1059946 () Bool)

(declare-fun e!603434 () Bool)

(assert (=> b!1059946 (= e!603434 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38469 0))(
  ( (V!38470 (val!12551 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38469)

(declare-datatypes ((tuple2!15956 0))(
  ( (tuple2!15957 (_1!7988 (_ BitVec 64)) (_2!7988 V!38469)) )
))
(declare-datatypes ((List!22570 0))(
  ( (Nil!22567) (Cons!22566 (h!23775 tuple2!15956) (t!31884 List!22570)) )
))
(declare-datatypes ((ListLongMap!13937 0))(
  ( (ListLongMap!13938 (toList!6984 List!22570)) )
))
(declare-fun lt!467183 () ListLongMap!13937)

(declare-datatypes ((ValueCell!11797 0))(
  ( (ValueCellFull!11797 (v!15162 V!38469)) (EmptyCell!11797) )
))
(declare-datatypes ((array!67008 0))(
  ( (array!67009 (arr!32209 (Array (_ BitVec 32) ValueCell!11797)) (size!32746 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67008)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38469)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67010 0))(
  ( (array!67011 (arr!32210 (Array (_ BitVec 32) (_ BitVec 64))) (size!32747 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67010)

(declare-fun getCurrentListMapNoExtraKeys!3548 (array!67010 array!67008 (_ BitVec 32) (_ BitVec 32) V!38469 V!38469 (_ BitVec 32) Int) ListLongMap!13937)

(assert (=> b!1059946 (= lt!467183 (getCurrentListMapNoExtraKeys!3548 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1059947 () Bool)

(declare-fun res!708069 () Bool)

(assert (=> b!1059947 (=> (not res!708069) (not e!603434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67010 (_ BitVec 32)) Bool)

(assert (=> b!1059947 (= res!708069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059948 () Bool)

(declare-fun res!708072 () Bool)

(assert (=> b!1059948 (=> (not res!708072) (not e!603434))))

(declare-datatypes ((List!22571 0))(
  ( (Nil!22568) (Cons!22567 (h!23776 (_ BitVec 64)) (t!31885 List!22571)) )
))
(declare-fun arrayNoDuplicates!0 (array!67010 (_ BitVec 32) List!22571) Bool)

(assert (=> b!1059948 (= res!708072 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22568))))

(declare-fun b!1059949 () Bool)

(declare-fun e!603430 () Bool)

(assert (=> b!1059949 (= e!603430 tp_is_empty!25001)))

(declare-fun b!1059950 () Bool)

(declare-fun e!603431 () Bool)

(assert (=> b!1059950 (= e!603431 (and e!603433 mapRes!39169))))

(declare-fun condMapEmpty!39169 () Bool)

(declare-fun mapDefault!39169 () ValueCell!11797)

