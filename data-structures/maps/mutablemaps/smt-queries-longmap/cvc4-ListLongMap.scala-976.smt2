; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21130 () Bool)

(assert start!21130)

(declare-fun b_free!5609 () Bool)

(declare-fun b_next!5609 () Bool)

(assert (=> start!21130 (= b_free!5609 (not b_next!5609))))

(declare-fun tp!19891 () Bool)

(declare-fun b_and!12469 () Bool)

(assert (=> start!21130 (= tp!19891 b_and!12469)))

(declare-fun mapIsEmpty!9299 () Bool)

(declare-fun mapRes!9299 () Bool)

(assert (=> mapIsEmpty!9299 mapRes!9299))

(declare-fun mapNonEmpty!9299 () Bool)

(declare-fun tp!19892 () Bool)

(declare-fun e!138271 () Bool)

(assert (=> mapNonEmpty!9299 (= mapRes!9299 (and tp!19892 e!138271))))

(declare-fun mapKey!9299 () (_ BitVec 32))

(declare-datatypes ((V!6941 0))(
  ( (V!6942 (val!2780 Int)) )
))
(declare-datatypes ((ValueCell!2392 0))(
  ( (ValueCellFull!2392 (v!4778 V!6941)) (EmptyCell!2392) )
))
(declare-datatypes ((array!10146 0))(
  ( (array!10147 (arr!4815 (Array (_ BitVec 32) ValueCell!2392)) (size!5140 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10146)

(declare-fun mapValue!9299 () ValueCell!2392)

(declare-fun mapRest!9299 () (Array (_ BitVec 32) ValueCell!2392))

(assert (=> mapNonEmpty!9299 (= (arr!4815 _values!649) (store mapRest!9299 mapKey!9299 mapValue!9299))))

(declare-fun b!212504 () Bool)

(declare-fun res!103933 () Bool)

(declare-fun e!138266 () Bool)

(assert (=> b!212504 (=> (not res!103933) (not e!138266))))

(declare-datatypes ((array!10148 0))(
  ( (array!10149 (arr!4816 (Array (_ BitVec 32) (_ BitVec 64))) (size!5141 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10148)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!212504 (= res!103933 (= (select (arr!4816 _keys!825) i!601) k!843))))

(declare-datatypes ((tuple2!4206 0))(
  ( (tuple2!4207 (_1!2113 (_ BitVec 64)) (_2!2113 V!6941)) )
))
(declare-fun lt!109608 () tuple2!4206)

(declare-fun e!138270 () Bool)

(declare-datatypes ((List!3119 0))(
  ( (Nil!3116) (Cons!3115 (h!3757 tuple2!4206) (t!8074 List!3119)) )
))
(declare-datatypes ((ListLongMap!3133 0))(
  ( (ListLongMap!3134 (toList!1582 List!3119)) )
))
(declare-fun lt!109610 () ListLongMap!3133)

(declare-fun lt!109609 () ListLongMap!3133)

(declare-fun b!212505 () Bool)

(declare-fun +!575 (ListLongMap!3133 tuple2!4206) ListLongMap!3133)

(assert (=> b!212505 (= e!138270 (= lt!109609 (+!575 lt!109610 lt!109608)))))

(declare-fun lt!109611 () ListLongMap!3133)

(assert (=> b!212505 (= lt!109609 (+!575 lt!109611 lt!109608))))

(declare-fun minValue!615 () V!6941)

(assert (=> b!212505 (= lt!109608 (tuple2!4207 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!212506 () Bool)

(declare-fun tp_is_empty!5471 () Bool)

(assert (=> b!212506 (= e!138271 tp_is_empty!5471)))

(declare-fun b!212507 () Bool)

(declare-fun res!103931 () Bool)

(assert (=> b!212507 (=> (not res!103931) (not e!138266))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!212507 (= res!103931 (and (= (size!5140 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5141 _keys!825) (size!5140 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212508 () Bool)

(declare-fun e!138267 () Bool)

(declare-fun e!138269 () Bool)

(assert (=> b!212508 (= e!138267 (and e!138269 mapRes!9299))))

(declare-fun condMapEmpty!9299 () Bool)

(declare-fun mapDefault!9299 () ValueCell!2392)

