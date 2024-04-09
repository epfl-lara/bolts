; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41666 () Bool)

(assert start!41666)

(declare-fun b_free!11311 () Bool)

(declare-fun b_next!11311 () Bool)

(assert (=> start!41666 (= b_free!11311 (not b_next!11311))))

(declare-fun tp!39933 () Bool)

(declare-fun b_and!19677 () Bool)

(assert (=> start!41666 (= tp!39933 b_and!19677)))

(declare-fun mapNonEmpty!20788 () Bool)

(declare-fun mapRes!20788 () Bool)

(declare-fun tp!39934 () Bool)

(declare-fun e!271727 () Bool)

(assert (=> mapNonEmpty!20788 (= mapRes!20788 (and tp!39934 e!271727))))

(declare-datatypes ((V!18091 0))(
  ( (V!18092 (val!6414 Int)) )
))
(declare-datatypes ((ValueCell!6026 0))(
  ( (ValueCellFull!6026 (v!8697 V!18091)) (EmptyCell!6026) )
))
(declare-fun mapValue!20788 () ValueCell!6026)

(declare-fun mapRest!20788 () (Array (_ BitVec 32) ValueCell!6026))

(declare-fun mapKey!20788 () (_ BitVec 32))

(declare-datatypes ((array!29219 0))(
  ( (array!29220 (arr!14037 (Array (_ BitVec 32) ValueCell!6026)) (size!14389 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29219)

(assert (=> mapNonEmpty!20788 (= (arr!14037 _values!833) (store mapRest!20788 mapKey!20788 mapValue!20788))))

(declare-fun b!465002 () Bool)

(declare-fun e!271728 () Bool)

(declare-fun e!271726 () Bool)

(assert (=> b!465002 (= e!271728 (and e!271726 mapRes!20788))))

(declare-fun condMapEmpty!20788 () Bool)

(declare-fun mapDefault!20788 () ValueCell!6026)

