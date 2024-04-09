; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20652 () Bool)

(assert start!20652)

(declare-fun b_free!5299 () Bool)

(declare-fun b_next!5299 () Bool)

(assert (=> start!20652 (= b_free!5299 (not b_next!5299))))

(declare-fun tp!18929 () Bool)

(declare-fun b_and!12063 () Bool)

(assert (=> start!20652 (= tp!18929 b_and!12063)))

(declare-fun b!205984 () Bool)

(declare-fun res!99695 () Bool)

(declare-fun e!134674 () Bool)

(assert (=> b!205984 (=> (not res!99695) (not e!134674))))

(declare-datatypes ((array!9520 0))(
  ( (array!9521 (arr!4510 (Array (_ BitVec 32) (_ BitVec 64))) (size!4835 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9520)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9520 (_ BitVec 32)) Bool)

(assert (=> b!205984 (= res!99695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8801 () Bool)

(declare-fun mapRes!8801 () Bool)

(assert (=> mapIsEmpty!8801 mapRes!8801))

(declare-fun b!205985 () Bool)

(declare-fun e!134668 () Bool)

(declare-fun e!134672 () Bool)

(assert (=> b!205985 (= e!134668 e!134672)))

(declare-fun res!99694 () Bool)

(assert (=> b!205985 (=> res!99694 e!134672)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!205985 (= res!99694 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6521 0))(
  ( (V!6522 (val!2622 Int)) )
))
(declare-datatypes ((tuple2!3976 0))(
  ( (tuple2!3977 (_1!1998 (_ BitVec 64)) (_2!1998 V!6521)) )
))
(declare-datatypes ((List!2893 0))(
  ( (Nil!2890) (Cons!2889 (h!3531 tuple2!3976) (t!7832 List!2893)) )
))
(declare-datatypes ((ListLongMap!2903 0))(
  ( (ListLongMap!2904 (toList!1467 List!2893)) )
))
(declare-fun lt!105192 () ListLongMap!2903)

(declare-fun lt!105186 () ListLongMap!2903)

(assert (=> b!205985 (= lt!105192 lt!105186)))

(declare-fun lt!105188 () ListLongMap!2903)

(declare-fun lt!105183 () tuple2!3976)

(declare-fun +!484 (ListLongMap!2903 tuple2!3976) ListLongMap!2903)

(assert (=> b!205985 (= lt!105186 (+!484 lt!105188 lt!105183))))

(declare-fun lt!105190 () ListLongMap!2903)

(declare-fun lt!105184 () ListLongMap!2903)

(assert (=> b!205985 (= lt!105190 lt!105184)))

(declare-fun lt!105187 () ListLongMap!2903)

(assert (=> b!205985 (= lt!105184 (+!484 lt!105187 lt!105183))))

(declare-fun lt!105191 () ListLongMap!2903)

(assert (=> b!205985 (= lt!105190 (+!484 lt!105191 lt!105183))))

(declare-fun minValue!615 () V!6521)

(assert (=> b!205985 (= lt!105183 (tuple2!3977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205986 () Bool)

(declare-fun res!99698 () Bool)

(assert (=> b!205986 (=> (not res!99698) (not e!134674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205986 (= res!99698 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8801 () Bool)

(declare-fun tp!18928 () Bool)

(declare-fun e!134670 () Bool)

(assert (=> mapNonEmpty!8801 (= mapRes!8801 (and tp!18928 e!134670))))

(declare-datatypes ((ValueCell!2234 0))(
  ( (ValueCellFull!2234 (v!4588 V!6521)) (EmptyCell!2234) )
))
(declare-fun mapValue!8801 () ValueCell!2234)

(declare-datatypes ((array!9522 0))(
  ( (array!9523 (arr!4511 (Array (_ BitVec 32) ValueCell!2234)) (size!4836 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9522)

(declare-fun mapKey!8801 () (_ BitVec 32))

(declare-fun mapRest!8801 () (Array (_ BitVec 32) ValueCell!2234))

(assert (=> mapNonEmpty!8801 (= (arr!4511 _values!649) (store mapRest!8801 mapKey!8801 mapValue!8801))))

(declare-fun b!205987 () Bool)

(declare-fun e!134669 () Bool)

(declare-fun e!134673 () Bool)

(assert (=> b!205987 (= e!134669 (and e!134673 mapRes!8801))))

(declare-fun condMapEmpty!8801 () Bool)

(declare-fun mapDefault!8801 () ValueCell!2234)

