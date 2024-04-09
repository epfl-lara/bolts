; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20448 () Bool)

(assert start!20448)

(declare-fun b_free!5095 () Bool)

(declare-fun b_next!5095 () Bool)

(assert (=> start!20448 (= b_free!5095 (not b_next!5095))))

(declare-fun tp!18317 () Bool)

(declare-fun b_and!11859 () Bool)

(assert (=> start!20448 (= tp!18317 b_and!11859)))

(declare-fun b!202296 () Bool)

(declare-fun res!96928 () Bool)

(declare-fun e!132532 () Bool)

(assert (=> b!202296 (=> (not res!96928) (not e!132532))))

(declare-datatypes ((array!9126 0))(
  ( (array!9127 (arr!4313 (Array (_ BitVec 32) (_ BitVec 64))) (size!4638 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9126)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9126 (_ BitVec 32)) Bool)

(assert (=> b!202296 (= res!96928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!96929 () Bool)

(assert (=> start!20448 (=> (not res!96929) (not e!132532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20448 (= res!96929 (validMask!0 mask!1149))))

(assert (=> start!20448 e!132532))

(declare-datatypes ((V!6249 0))(
  ( (V!6250 (val!2520 Int)) )
))
(declare-datatypes ((ValueCell!2132 0))(
  ( (ValueCellFull!2132 (v!4486 V!6249)) (EmptyCell!2132) )
))
(declare-datatypes ((array!9128 0))(
  ( (array!9129 (arr!4314 (Array (_ BitVec 32) ValueCell!2132)) (size!4639 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9128)

(declare-fun e!132530 () Bool)

(declare-fun array_inv!2839 (array!9128) Bool)

(assert (=> start!20448 (and (array_inv!2839 _values!649) e!132530)))

(assert (=> start!20448 true))

(declare-fun tp_is_empty!4951 () Bool)

(assert (=> start!20448 tp_is_empty!4951))

(declare-fun array_inv!2840 (array!9126) Bool)

(assert (=> start!20448 (array_inv!2840 _keys!825)))

(assert (=> start!20448 tp!18317))

(declare-fun b!202297 () Bool)

(declare-fun res!96927 () Bool)

(declare-fun e!132526 () Bool)

(assert (=> b!202297 (=> (not res!96927) (not e!132526))))

(declare-datatypes ((tuple2!3816 0))(
  ( (tuple2!3817 (_1!1918 (_ BitVec 64)) (_2!1918 V!6249)) )
))
(declare-datatypes ((List!2747 0))(
  ( (Nil!2744) (Cons!2743 (h!3385 tuple2!3816) (t!7686 List!2747)) )
))
(declare-datatypes ((ListLongMap!2743 0))(
  ( (ListLongMap!2744 (toList!1387 List!2747)) )
))
(declare-fun lt!101579 () ListLongMap!2743)

(declare-fun lt!101576 () tuple2!3816)

(declare-fun lt!101578 () ListLongMap!2743)

(declare-fun +!404 (ListLongMap!2743 tuple2!3816) ListLongMap!2743)

(assert (=> b!202297 (= res!96927 (= lt!101578 (+!404 lt!101579 lt!101576)))))

(declare-fun b!202298 () Bool)

(declare-fun e!132528 () Bool)

(assert (=> b!202298 (= e!132528 tp_is_empty!4951)))

(declare-fun lt!101580 () ListLongMap!2743)

(declare-fun b!202299 () Bool)

(declare-fun lt!101581 () ListLongMap!2743)

(assert (=> b!202299 (= e!132526 (= lt!101580 (+!404 lt!101581 lt!101576)))))

(declare-fun mapNonEmpty!8495 () Bool)

(declare-fun mapRes!8495 () Bool)

(declare-fun tp!18316 () Bool)

(assert (=> mapNonEmpty!8495 (= mapRes!8495 (and tp!18316 e!132528))))

(declare-fun mapRest!8495 () (Array (_ BitVec 32) ValueCell!2132))

(declare-fun mapKey!8495 () (_ BitVec 32))

(declare-fun mapValue!8495 () ValueCell!2132)

(assert (=> mapNonEmpty!8495 (= (arr!4314 _values!649) (store mapRest!8495 mapKey!8495 mapValue!8495))))

(declare-fun b!202300 () Bool)

(declare-fun res!96931 () Bool)

(assert (=> b!202300 (=> (not res!96931) (not e!132532))))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!202300 (= res!96931 (= (select (arr!4313 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8495 () Bool)

(assert (=> mapIsEmpty!8495 mapRes!8495))

(declare-fun b!202301 () Bool)

(declare-fun e!132531 () Bool)

(assert (=> b!202301 (= e!132530 (and e!132531 mapRes!8495))))

(declare-fun condMapEmpty!8495 () Bool)

(declare-fun mapDefault!8495 () ValueCell!2132)

