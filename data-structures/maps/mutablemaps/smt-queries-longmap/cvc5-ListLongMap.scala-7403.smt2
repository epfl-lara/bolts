; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94246 () Bool)

(assert start!94246)

(declare-fun b_free!21595 () Bool)

(declare-fun b_next!21595 () Bool)

(assert (=> start!94246 (= b_free!21595 (not b_next!21595))))

(declare-fun tp!76223 () Bool)

(declare-fun b_and!34373 () Bool)

(assert (=> start!94246 (= tp!76223 b_and!34373)))

(declare-fun b!1065343 () Bool)

(declare-fun res!711216 () Bool)

(declare-fun e!607365 () Bool)

(assert (=> b!1065343 (=> (not res!711216) (not e!607365))))

(declare-datatypes ((array!67770 0))(
  ( (array!67771 (arr!32584 (Array (_ BitVec 32) (_ BitVec 64))) (size!33121 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67770)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67770 (_ BitVec 32)) Bool)

(assert (=> b!1065343 (= res!711216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39793 () Bool)

(declare-fun mapRes!39793 () Bool)

(assert (=> mapIsEmpty!39793 mapRes!39793))

(declare-fun b!1065344 () Bool)

(declare-fun res!711217 () Bool)

(assert (=> b!1065344 (=> (not res!711217) (not e!607365))))

(declare-datatypes ((List!22843 0))(
  ( (Nil!22840) (Cons!22839 (h!24048 (_ BitVec 64)) (t!32169 List!22843)) )
))
(declare-fun arrayNoDuplicates!0 (array!67770 (_ BitVec 32) List!22843) Bool)

(assert (=> b!1065344 (= res!711217 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22840))))

(declare-fun mapNonEmpty!39793 () Bool)

(declare-fun tp!76224 () Bool)

(declare-fun e!607367 () Bool)

(assert (=> mapNonEmpty!39793 (= mapRes!39793 (and tp!76224 e!607367))))

(declare-fun mapKey!39793 () (_ BitVec 32))

(declare-datatypes ((V!39009 0))(
  ( (V!39010 (val!12753 Int)) )
))
(declare-datatypes ((ValueCell!11999 0))(
  ( (ValueCellFull!11999 (v!15366 V!39009)) (EmptyCell!11999) )
))
(declare-fun mapValue!39793 () ValueCell!11999)

(declare-datatypes ((array!67772 0))(
  ( (array!67773 (arr!32585 (Array (_ BitVec 32) ValueCell!11999)) (size!33122 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67772)

(declare-fun mapRest!39793 () (Array (_ BitVec 32) ValueCell!11999))

(assert (=> mapNonEmpty!39793 (= (arr!32585 _values!955) (store mapRest!39793 mapKey!39793 mapValue!39793))))

(declare-fun b!1065345 () Bool)

(declare-fun e!607368 () Bool)

(declare-fun tp_is_empty!25405 () Bool)

(assert (=> b!1065345 (= e!607368 tp_is_empty!25405)))

(declare-fun b!1065346 () Bool)

(declare-fun e!607369 () Bool)

(assert (=> b!1065346 (= e!607369 (and e!607368 mapRes!39793))))

(declare-fun condMapEmpty!39793 () Bool)

(declare-fun mapDefault!39793 () ValueCell!11999)

