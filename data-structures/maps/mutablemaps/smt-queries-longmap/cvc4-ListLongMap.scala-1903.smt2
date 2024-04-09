; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33920 () Bool)

(assert start!33920)

(declare-fun b_free!7091 () Bool)

(declare-fun b_next!7091 () Bool)

(assert (=> start!33920 (= b_free!7091 (not b_next!7091))))

(declare-fun tp!24785 () Bool)

(declare-fun b_and!14295 () Bool)

(assert (=> start!33920 (= tp!24785 b_and!14295)))

(declare-fun res!186613 () Bool)

(declare-fun e!207182 () Bool)

(assert (=> start!33920 (=> (not res!186613) (not e!207182))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33920 (= res!186613 (validMask!0 mask!2385))))

(assert (=> start!33920 e!207182))

(assert (=> start!33920 true))

(declare-fun tp_is_empty!7043 () Bool)

(assert (=> start!33920 tp_is_empty!7043))

(assert (=> start!33920 tp!24785))

(declare-datatypes ((V!10367 0))(
  ( (V!10368 (val!3566 Int)) )
))
(declare-datatypes ((ValueCell!3178 0))(
  ( (ValueCellFull!3178 (v!5727 V!10367)) (EmptyCell!3178) )
))
(declare-datatypes ((array!17649 0))(
  ( (array!17650 (arr!8349 (Array (_ BitVec 32) ValueCell!3178)) (size!8701 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17649)

(declare-fun e!207177 () Bool)

(declare-fun array_inv!6184 (array!17649) Bool)

(assert (=> start!33920 (and (array_inv!6184 _values!1525) e!207177)))

(declare-datatypes ((array!17651 0))(
  ( (array!17652 (arr!8350 (Array (_ BitVec 32) (_ BitVec 64))) (size!8702 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17651)

(declare-fun array_inv!6185 (array!17651) Bool)

(assert (=> start!33920 (array_inv!6185 _keys!1895)))

(declare-fun b!337635 () Bool)

(declare-fun e!207180 () Bool)

(assert (=> b!337635 (= e!207180 tp_is_empty!7043)))

(declare-fun b!337636 () Bool)

(declare-fun e!207179 () Bool)

(declare-fun mapRes!11970 () Bool)

(assert (=> b!337636 (= e!207177 (and e!207179 mapRes!11970))))

(declare-fun condMapEmpty!11970 () Bool)

(declare-fun mapDefault!11970 () ValueCell!3178)

