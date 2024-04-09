; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20050 () Bool)

(assert start!20050)

(declare-fun b!196189 () Bool)

(declare-fun e!129190 () Bool)

(declare-fun tp_is_empty!4553 () Bool)

(assert (=> b!196189 (= e!129190 tp_is_empty!4553)))

(declare-fun b!196190 () Bool)

(declare-fun e!129188 () Bool)

(declare-fun mapRes!7898 () Bool)

(assert (=> b!196190 (= e!129188 (and e!129190 mapRes!7898))))

(declare-fun condMapEmpty!7898 () Bool)

(declare-datatypes ((V!5717 0))(
  ( (V!5718 (val!2321 Int)) )
))
(declare-datatypes ((ValueCell!1933 0))(
  ( (ValueCellFull!1933 (v!4287 V!5717)) (EmptyCell!1933) )
))
(declare-datatypes ((array!8368 0))(
  ( (array!8369 (arr!3934 (Array (_ BitVec 32) ValueCell!1933)) (size!4259 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8368)

(declare-fun mapDefault!7898 () ValueCell!1933)

