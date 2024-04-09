; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41162 () Bool)

(assert start!41162)

(declare-fun b_free!11023 () Bool)

(declare-fun b_next!11023 () Bool)

(assert (=> start!41162 (= b_free!11023 (not b_next!11023))))

(declare-fun tp!38905 () Bool)

(declare-fun b_and!19303 () Bool)

(assert (=> start!41162 (= tp!38905 b_and!19303)))

(declare-fun b!459324 () Bool)

(declare-fun res!274591 () Bool)

(declare-fun e!268086 () Bool)

(assert (=> b!459324 (=> (not res!274591) (not e!268086))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28487 0))(
  ( (array!28488 (arr!13681 (Array (_ BitVec 32) (_ BitVec 64))) (size!14033 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28487)

(assert (=> b!459324 (= res!274591 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14033 _keys!709))))))

(declare-fun b!459325 () Bool)

(declare-fun e!268085 () Bool)

(declare-fun tp_is_empty!12361 () Bool)

(assert (=> b!459325 (= e!268085 tp_is_empty!12361)))

(declare-fun b!459326 () Bool)

(declare-fun e!268083 () Bool)

(assert (=> b!459326 (= e!268083 tp_is_empty!12361)))

(declare-fun b!459327 () Bool)

(declare-fun res!274584 () Bool)

(declare-fun e!268080 () Bool)

(assert (=> b!459327 (=> (not res!274584) (not e!268080))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!459327 (= res!274584 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!20191 () Bool)

(declare-fun mapRes!20191 () Bool)

(declare-fun tp!38904 () Bool)

(assert (=> mapNonEmpty!20191 (= mapRes!20191 (and tp!38904 e!268083))))

(declare-datatypes ((V!17587 0))(
  ( (V!17588 (val!6225 Int)) )
))
(declare-datatypes ((ValueCell!5837 0))(
  ( (ValueCellFull!5837 (v!8499 V!17587)) (EmptyCell!5837) )
))
(declare-fun mapValue!20191 () ValueCell!5837)

(declare-datatypes ((array!28489 0))(
  ( (array!28490 (arr!13682 (Array (_ BitVec 32) ValueCell!5837)) (size!14034 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28489)

(declare-fun mapKey!20191 () (_ BitVec 32))

(declare-fun mapRest!20191 () (Array (_ BitVec 32) ValueCell!5837))

(assert (=> mapNonEmpty!20191 (= (arr!13682 _values!549) (store mapRest!20191 mapKey!20191 mapValue!20191))))

(declare-fun mapIsEmpty!20191 () Bool)

(assert (=> mapIsEmpty!20191 mapRes!20191))

(declare-fun b!459328 () Bool)

(declare-fun e!268082 () Bool)

(assert (=> b!459328 (= e!268080 e!268082)))

(declare-fun res!274586 () Bool)

(assert (=> b!459328 (=> (not res!274586) (not e!268082))))

(assert (=> b!459328 (= res!274586 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17587)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!207867 () array!28487)

(declare-fun zeroValue!515 () V!17587)

(declare-fun lt!207870 () array!28489)

(declare-datatypes ((tuple2!8170 0))(
  ( (tuple2!8171 (_1!4095 (_ BitVec 64)) (_2!4095 V!17587)) )
))
(declare-datatypes ((List!8274 0))(
  ( (Nil!8271) (Cons!8270 (h!9126 tuple2!8170) (t!14184 List!8274)) )
))
(declare-datatypes ((ListLongMap!7097 0))(
  ( (ListLongMap!7098 (toList!3564 List!8274)) )
))
(declare-fun lt!207871 () ListLongMap!7097)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1734 (array!28487 array!28489 (_ BitVec 32) (_ BitVec 32) V!17587 V!17587 (_ BitVec 32) Int) ListLongMap!7097)

(assert (=> b!459328 (= lt!207871 (getCurrentListMapNoExtraKeys!1734 lt!207867 lt!207870 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17587)

(assert (=> b!459328 (= lt!207870 (array!28490 (store (arr!13682 _values!549) i!563 (ValueCellFull!5837 v!412)) (size!14034 _values!549)))))

(declare-fun lt!207866 () ListLongMap!7097)

(assert (=> b!459328 (= lt!207866 (getCurrentListMapNoExtraKeys!1734 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459329 () Bool)

(declare-fun res!274580 () Bool)

(assert (=> b!459329 (=> (not res!274580) (not e!268086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28487 (_ BitVec 32)) Bool)

(assert (=> b!459329 (= res!274580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459330 () Bool)

(declare-datatypes ((Unit!13297 0))(
  ( (Unit!13298) )
))
(declare-fun e!268087 () Unit!13297)

(declare-fun Unit!13299 () Unit!13297)

(assert (=> b!459330 (= e!268087 Unit!13299)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!207865 () Unit!13297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28487 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13297)

(assert (=> b!459330 (= lt!207865 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459330 false))

(declare-fun b!459331 () Bool)

(declare-fun e!268081 () Bool)

(assert (=> b!459331 (= e!268081 (bvslt from!863 (size!14034 _values!549)))))

(assert (=> b!459331 (not (= (select (arr!13681 _keys!709) from!863) k!794))))

(declare-fun lt!207873 () Unit!13297)

(assert (=> b!459331 (= lt!207873 e!268087)))

(declare-fun c!56408 () Bool)

(assert (=> b!459331 (= c!56408 (= (select (arr!13681 _keys!709) from!863) k!794))))

(declare-fun lt!207869 () ListLongMap!7097)

(declare-fun +!1584 (ListLongMap!7097 tuple2!8170) ListLongMap!7097)

(declare-fun get!6762 (ValueCell!5837 V!17587) V!17587)

(declare-fun dynLambda!894 (Int (_ BitVec 64)) V!17587)

(assert (=> b!459331 (= lt!207871 (+!1584 lt!207869 (tuple2!8171 (select (arr!13681 _keys!709) from!863) (get!6762 (select (arr!13682 _values!549) from!863) (dynLambda!894 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459332 () Bool)

(declare-fun res!274589 () Bool)

(assert (=> b!459332 (=> (not res!274589) (not e!268080))))

(declare-datatypes ((List!8275 0))(
  ( (Nil!8272) (Cons!8271 (h!9127 (_ BitVec 64)) (t!14185 List!8275)) )
))
(declare-fun arrayNoDuplicates!0 (array!28487 (_ BitVec 32) List!8275) Bool)

(assert (=> b!459332 (= res!274589 (arrayNoDuplicates!0 lt!207867 #b00000000000000000000000000000000 Nil!8272))))

(declare-fun b!459333 () Bool)

(assert (=> b!459333 (= e!268086 e!268080)))

(declare-fun res!274583 () Bool)

(assert (=> b!459333 (=> (not res!274583) (not e!268080))))

(assert (=> b!459333 (= res!274583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207867 mask!1025))))

(assert (=> b!459333 (= lt!207867 (array!28488 (store (arr!13681 _keys!709) i!563 k!794) (size!14033 _keys!709)))))

(declare-fun res!274579 () Bool)

(assert (=> start!41162 (=> (not res!274579) (not e!268086))))

(assert (=> start!41162 (= res!274579 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14033 _keys!709))))))

(assert (=> start!41162 e!268086))

(assert (=> start!41162 tp_is_empty!12361))

(assert (=> start!41162 tp!38905))

(assert (=> start!41162 true))

(declare-fun e!268084 () Bool)

(declare-fun array_inv!9892 (array!28489) Bool)

(assert (=> start!41162 (and (array_inv!9892 _values!549) e!268084)))

(declare-fun array_inv!9893 (array!28487) Bool)

(assert (=> start!41162 (array_inv!9893 _keys!709)))

(declare-fun b!459334 () Bool)

(declare-fun res!274578 () Bool)

(assert (=> b!459334 (=> (not res!274578) (not e!268086))))

(assert (=> b!459334 (= res!274578 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8272))))

(declare-fun b!459335 () Bool)

(declare-fun res!274590 () Bool)

(assert (=> b!459335 (=> (not res!274590) (not e!268086))))

(assert (=> b!459335 (= res!274590 (or (= (select (arr!13681 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13681 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459336 () Bool)

(assert (=> b!459336 (= e!268084 (and e!268085 mapRes!20191))))

(declare-fun condMapEmpty!20191 () Bool)

(declare-fun mapDefault!20191 () ValueCell!5837)

