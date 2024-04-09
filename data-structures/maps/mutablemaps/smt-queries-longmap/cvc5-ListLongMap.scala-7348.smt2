; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93828 () Bool)

(assert start!93828)

(declare-fun b_free!21265 () Bool)

(declare-fun b_next!21265 () Bool)

(assert (=> start!93828 (= b_free!21265 (not b_next!21265))))

(declare-fun tp!75219 () Bool)

(declare-fun b_and!33997 () Bool)

(assert (=> start!93828 (= tp!75219 b_and!33997)))

(declare-fun b!1060794 () Bool)

(declare-fun res!708543 () Bool)

(declare-fun e!604034 () Bool)

(assert (=> b!1060794 (=> (not res!708543) (not e!604034))))

(declare-datatypes ((array!67144 0))(
  ( (array!67145 (arr!32276 (Array (_ BitVec 32) (_ BitVec 64))) (size!32813 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67144)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67144 (_ BitVec 32)) Bool)

(assert (=> b!1060794 (= res!708543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060795 () Bool)

(declare-fun e!604035 () Bool)

(declare-fun tp_is_empty!25075 () Bool)

(assert (=> b!1060795 (= e!604035 tp_is_empty!25075)))

(declare-fun b!1060796 () Bool)

(assert (=> b!1060796 (= e!604034 false)))

(declare-datatypes ((V!38569 0))(
  ( (V!38570 (val!12588 Int)) )
))
(declare-datatypes ((ValueCell!11834 0))(
  ( (ValueCellFull!11834 (v!15199 V!38569)) (EmptyCell!11834) )
))
(declare-datatypes ((array!67146 0))(
  ( (array!67147 (arr!32277 (Array (_ BitVec 32) ValueCell!11834)) (size!32814 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67146)

(declare-datatypes ((tuple2!16006 0))(
  ( (tuple2!16007 (_1!8013 (_ BitVec 64)) (_2!8013 V!38569)) )
))
(declare-datatypes ((List!22618 0))(
  ( (Nil!22615) (Cons!22614 (h!23823 tuple2!16006) (t!31934 List!22618)) )
))
(declare-datatypes ((ListLongMap!13987 0))(
  ( (ListLongMap!13988 (toList!7009 List!22618)) )
))
(declare-fun lt!467372 () ListLongMap!13987)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38569)

(declare-fun minValue!907 () V!38569)

(declare-fun getCurrentListMapNoExtraKeys!3573 (array!67144 array!67146 (_ BitVec 32) (_ BitVec 32) V!38569 V!38569 (_ BitVec 32) Int) ListLongMap!13987)

(assert (=> b!1060796 (= lt!467372 (getCurrentListMapNoExtraKeys!3573 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38569)

(declare-fun lt!467371 () ListLongMap!13987)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060796 (= lt!467371 (getCurrentListMapNoExtraKeys!3573 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060797 () Bool)

(declare-fun e!604033 () Bool)

(declare-fun e!604036 () Bool)

(declare-fun mapRes!39283 () Bool)

(assert (=> b!1060797 (= e!604033 (and e!604036 mapRes!39283))))

(declare-fun condMapEmpty!39283 () Bool)

(declare-fun mapDefault!39283 () ValueCell!11834)

