; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70078 () Bool)

(assert start!70078)

(declare-fun b_free!12475 () Bool)

(declare-fun b_next!12475 () Bool)

(assert (=> start!70078 (= b_free!12475 (not b_next!12475))))

(declare-fun tp!44139 () Bool)

(declare-fun b_and!21265 () Bool)

(assert (=> start!70078 (= tp!44139 b_and!21265)))

(declare-fun b!813983 () Bool)

(declare-fun res!556119 () Bool)

(declare-fun e!451190 () Bool)

(assert (=> b!813983 (=> (not res!556119) (not e!451190))))

(declare-datatypes ((array!44558 0))(
  ( (array!44559 (arr!21335 (Array (_ BitVec 32) (_ BitVec 64))) (size!21756 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44558)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44558 (_ BitVec 32)) Bool)

(assert (=> b!813983 (= res!556119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22858 () Bool)

(declare-fun mapRes!22858 () Bool)

(declare-fun tp!44140 () Bool)

(declare-fun e!451187 () Bool)

(assert (=> mapNonEmpty!22858 (= mapRes!22858 (and tp!44140 e!451187))))

(declare-fun mapKey!22858 () (_ BitVec 32))

(declare-datatypes ((V!23915 0))(
  ( (V!23916 (val!7140 Int)) )
))
(declare-datatypes ((ValueCell!6677 0))(
  ( (ValueCellFull!6677 (v!9563 V!23915)) (EmptyCell!6677) )
))
(declare-fun mapValue!22858 () ValueCell!6677)

(declare-datatypes ((array!44560 0))(
  ( (array!44561 (arr!21336 (Array (_ BitVec 32) ValueCell!6677)) (size!21757 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44560)

(declare-fun mapRest!22858 () (Array (_ BitVec 32) ValueCell!6677))

(assert (=> mapNonEmpty!22858 (= (arr!21336 _values!788) (store mapRest!22858 mapKey!22858 mapValue!22858))))

(declare-fun b!813984 () Bool)

(declare-fun e!451189 () Bool)

(declare-fun e!451186 () Bool)

(assert (=> b!813984 (= e!451189 (and e!451186 mapRes!22858))))

(declare-fun condMapEmpty!22858 () Bool)

(declare-fun mapDefault!22858 () ValueCell!6677)

