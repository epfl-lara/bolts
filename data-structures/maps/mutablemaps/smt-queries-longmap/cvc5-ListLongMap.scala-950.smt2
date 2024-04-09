; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20808 () Bool)

(assert start!20808)

(declare-fun b_free!5449 () Bool)

(declare-fun b_next!5449 () Bool)

(assert (=> start!20808 (= b_free!5449 (not b_next!5449))))

(declare-fun tp!19387 () Bool)

(declare-fun b_and!12213 () Bool)

(assert (=> start!20808 (= tp!19387 b_and!12213)))

(declare-fun res!101365 () Bool)

(declare-fun e!135907 () Bool)

(assert (=> start!20808 (=> (not res!101365) (not e!135907))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20808 (= res!101365 (validMask!0 mask!1149))))

(assert (=> start!20808 e!135907))

(declare-datatypes ((V!6729 0))(
  ( (V!6730 (val!2700 Int)) )
))
(declare-datatypes ((ValueCell!2312 0))(
  ( (ValueCellFull!2312 (v!4666 V!6729)) (EmptyCell!2312) )
))
(declare-datatypes ((array!9824 0))(
  ( (array!9825 (arr!4662 (Array (_ BitVec 32) ValueCell!2312)) (size!4987 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9824)

(declare-fun e!135908 () Bool)

(declare-fun array_inv!3083 (array!9824) Bool)

(assert (=> start!20808 (and (array_inv!3083 _values!649) e!135908)))

(assert (=> start!20808 true))

(declare-fun tp_is_empty!5311 () Bool)

(assert (=> start!20808 tp_is_empty!5311))

(declare-datatypes ((array!9826 0))(
  ( (array!9827 (arr!4663 (Array (_ BitVec 32) (_ BitVec 64))) (size!4988 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9826)

(declare-fun array_inv!3084 (array!9826) Bool)

(assert (=> start!20808 (array_inv!3084 _keys!825)))

(assert (=> start!20808 tp!19387))

(declare-fun b!208356 () Bool)

(declare-fun res!101367 () Bool)

(assert (=> b!208356 (=> (not res!101367) (not e!135907))))

(declare-datatypes ((List!3007 0))(
  ( (Nil!3004) (Cons!3003 (h!3645 (_ BitVec 64)) (t!7946 List!3007)) )
))
(declare-fun arrayNoDuplicates!0 (array!9826 (_ BitVec 32) List!3007) Bool)

(assert (=> b!208356 (= res!101367 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3004))))

(declare-fun mapNonEmpty!9035 () Bool)

(declare-fun mapRes!9035 () Bool)

(declare-fun tp!19388 () Bool)

(declare-fun e!135910 () Bool)

(assert (=> mapNonEmpty!9035 (= mapRes!9035 (and tp!19388 e!135910))))

(declare-fun mapValue!9035 () ValueCell!2312)

(declare-fun mapKey!9035 () (_ BitVec 32))

(declare-fun mapRest!9035 () (Array (_ BitVec 32) ValueCell!2312))

(assert (=> mapNonEmpty!9035 (= (arr!4662 _values!649) (store mapRest!9035 mapKey!9035 mapValue!9035))))

(declare-fun b!208357 () Bool)

(declare-fun res!101362 () Bool)

(assert (=> b!208357 (=> (not res!101362) (not e!135907))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208357 (= res!101362 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4988 _keys!825))))))

(declare-fun b!208358 () Bool)

(assert (=> b!208358 (= e!135907 false)))

(declare-datatypes ((tuple2!4088 0))(
  ( (tuple2!4089 (_1!2054 (_ BitVec 64)) (_2!2054 V!6729)) )
))
(declare-datatypes ((List!3008 0))(
  ( (Nil!3005) (Cons!3004 (h!3646 tuple2!4088) (t!7947 List!3008)) )
))
(declare-datatypes ((ListLongMap!3015 0))(
  ( (ListLongMap!3016 (toList!1523 List!3008)) )
))
(declare-fun lt!106801 () ListLongMap!3015)

(declare-fun v!520 () V!6729)

(declare-fun zeroValue!615 () V!6729)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6729)

(declare-fun getCurrentListMapNoExtraKeys!456 (array!9826 array!9824 (_ BitVec 32) (_ BitVec 32) V!6729 V!6729 (_ BitVec 32) Int) ListLongMap!3015)

(assert (=> b!208358 (= lt!106801 (getCurrentListMapNoExtraKeys!456 _keys!825 (array!9825 (store (arr!4662 _values!649) i!601 (ValueCellFull!2312 v!520)) (size!4987 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106800 () ListLongMap!3015)

(assert (=> b!208358 (= lt!106800 (getCurrentListMapNoExtraKeys!456 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208359 () Bool)

(declare-fun res!101364 () Bool)

(assert (=> b!208359 (=> (not res!101364) (not e!135907))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208359 (= res!101364 (= (select (arr!4663 _keys!825) i!601) k!843))))

(declare-fun b!208360 () Bool)

(declare-fun res!101368 () Bool)

(assert (=> b!208360 (=> (not res!101368) (not e!135907))))

(assert (=> b!208360 (= res!101368 (and (= (size!4987 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4988 _keys!825) (size!4987 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208361 () Bool)

(declare-fun res!101366 () Bool)

(assert (=> b!208361 (=> (not res!101366) (not e!135907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208361 (= res!101366 (validKeyInArray!0 k!843))))

(declare-fun b!208362 () Bool)

(declare-fun e!135906 () Bool)

(assert (=> b!208362 (= e!135906 tp_is_empty!5311)))

(declare-fun b!208363 () Bool)

(declare-fun res!101363 () Bool)

(assert (=> b!208363 (=> (not res!101363) (not e!135907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9826 (_ BitVec 32)) Bool)

(assert (=> b!208363 (= res!101363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208364 () Bool)

(assert (=> b!208364 (= e!135908 (and e!135906 mapRes!9035))))

(declare-fun condMapEmpty!9035 () Bool)

(declare-fun mapDefault!9035 () ValueCell!2312)

