; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20098 () Bool)

(assert start!20098)

(declare-fun b_free!4745 () Bool)

(declare-fun b_next!4745 () Bool)

(assert (=> start!20098 (= b_free!4745 (not b_next!4745))))

(declare-fun tp!17266 () Bool)

(declare-fun b_and!11509 () Bool)

(assert (=> start!20098 (= tp!17266 b_and!11509)))

(declare-fun mapIsEmpty!7970 () Bool)

(declare-fun mapRes!7970 () Bool)

(assert (=> mapIsEmpty!7970 mapRes!7970))

(declare-fun b!196680 () Bool)

(declare-fun res!92881 () Bool)

(declare-fun e!129546 () Bool)

(assert (=> b!196680 (=> (not res!92881) (not e!129546))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8458 0))(
  ( (array!8459 (arr!3979 (Array (_ BitVec 32) (_ BitVec 64))) (size!4304 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8458)

(assert (=> b!196680 (= res!92881 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4304 _keys!825))))))

(declare-fun b!196681 () Bool)

(declare-fun res!92884 () Bool)

(assert (=> b!196681 (=> (not res!92884) (not e!129546))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5781 0))(
  ( (V!5782 (val!2345 Int)) )
))
(declare-datatypes ((ValueCell!1957 0))(
  ( (ValueCellFull!1957 (v!4311 V!5781)) (EmptyCell!1957) )
))
(declare-datatypes ((array!8460 0))(
  ( (array!8461 (arr!3980 (Array (_ BitVec 32) ValueCell!1957)) (size!4305 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8460)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196681 (= res!92884 (and (= (size!4305 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4304 _keys!825) (size!4305 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196682 () Bool)

(declare-fun res!92887 () Bool)

(assert (=> b!196682 (=> (not res!92887) (not e!129546))))

(declare-datatypes ((List!2505 0))(
  ( (Nil!2502) (Cons!2501 (h!3143 (_ BitVec 64)) (t!7444 List!2505)) )
))
(declare-fun arrayNoDuplicates!0 (array!8458 (_ BitVec 32) List!2505) Bool)

(assert (=> b!196682 (= res!92887 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2502))))

(declare-fun mapNonEmpty!7970 () Bool)

(declare-fun tp!17267 () Bool)

(declare-fun e!129550 () Bool)

(assert (=> mapNonEmpty!7970 (= mapRes!7970 (and tp!17267 e!129550))))

(declare-fun mapValue!7970 () ValueCell!1957)

(declare-fun mapRest!7970 () (Array (_ BitVec 32) ValueCell!1957))

(declare-fun mapKey!7970 () (_ BitVec 32))

(assert (=> mapNonEmpty!7970 (= (arr!3980 _values!649) (store mapRest!7970 mapKey!7970 mapValue!7970))))

(declare-fun b!196683 () Bool)

(declare-fun e!129548 () Bool)

(declare-fun tp_is_empty!4601 () Bool)

(assert (=> b!196683 (= e!129548 tp_is_empty!4601)))

(declare-fun b!196684 () Bool)

(declare-fun e!129549 () Bool)

(assert (=> b!196684 (= e!129549 (and e!129548 mapRes!7970))))

(declare-fun condMapEmpty!7970 () Bool)

(declare-fun mapDefault!7970 () ValueCell!1957)

