; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39942 () Bool)

(assert start!39942)

(declare-fun b_free!10201 () Bool)

(declare-fun b_next!10201 () Bool)

(assert (=> start!39942 (= b_free!10201 (not b_next!10201))))

(declare-fun tp!36132 () Bool)

(declare-fun b_and!18079 () Bool)

(assert (=> start!39942 (= tp!36132 b_and!18079)))

(declare-fun b!433237 () Bool)

(declare-fun res!255050 () Bool)

(declare-fun e!256167 () Bool)

(assert (=> b!433237 (=> (not res!255050) (not e!256167))))

(declare-datatypes ((array!26515 0))(
  ( (array!26516 (arr!12704 (Array (_ BitVec 32) (_ BitVec 64))) (size!13056 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26515)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16243 0))(
  ( (V!16244 (val!5721 Int)) )
))
(declare-datatypes ((ValueCell!5333 0))(
  ( (ValueCellFull!5333 (v!7964 V!16243)) (EmptyCell!5333) )
))
(declare-datatypes ((array!26517 0))(
  ( (array!26518 (arr!12705 (Array (_ BitVec 32) ValueCell!5333)) (size!13057 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26517)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!433237 (= res!255050 (and (= (size!13057 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13056 _keys!709) (size!13057 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433238 () Bool)

(declare-fun res!255054 () Bool)

(declare-fun e!256173 () Bool)

(assert (=> b!433238 (=> (not res!255054) (not e!256173))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433238 (= res!255054 (bvsle from!863 i!563))))

(declare-fun b!433240 () Bool)

(declare-fun res!255059 () Bool)

(assert (=> b!433240 (=> (not res!255059) (not e!256167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433240 (= res!255059 (validMask!0 mask!1025))))

(declare-fun b!433241 () Bool)

(declare-fun e!256171 () Bool)

(declare-fun tp_is_empty!11353 () Bool)

(assert (=> b!433241 (= e!256171 tp_is_empty!11353)))

(declare-fun b!433242 () Bool)

(declare-fun res!255046 () Bool)

(assert (=> b!433242 (=> (not res!255046) (not e!256167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26515 (_ BitVec 32)) Bool)

(assert (=> b!433242 (= res!255046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433243 () Bool)

(declare-fun res!255053 () Bool)

(assert (=> b!433243 (=> (not res!255053) (not e!256167))))

(declare-datatypes ((List!7543 0))(
  ( (Nil!7540) (Cons!7539 (h!8395 (_ BitVec 64)) (t!13201 List!7543)) )
))
(declare-fun arrayNoDuplicates!0 (array!26515 (_ BitVec 32) List!7543) Bool)

(assert (=> b!433243 (= res!255053 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7540))))

(declare-fun b!433244 () Bool)

(declare-fun e!256169 () Bool)

(assert (=> b!433244 (= e!256169 true)))

(declare-datatypes ((tuple2!7494 0))(
  ( (tuple2!7495 (_1!3757 (_ BitVec 64)) (_2!3757 V!16243)) )
))
(declare-fun lt!199002 () tuple2!7494)

(declare-datatypes ((List!7544 0))(
  ( (Nil!7541) (Cons!7540 (h!8396 tuple2!7494) (t!13202 List!7544)) )
))
(declare-datatypes ((ListLongMap!6421 0))(
  ( (ListLongMap!6422 (toList!3226 List!7544)) )
))
(declare-fun lt!198992 () ListLongMap!6421)

(declare-fun lt!198989 () ListLongMap!6421)

(declare-fun lt!198998 () tuple2!7494)

(declare-fun +!1372 (ListLongMap!6421 tuple2!7494) ListLongMap!6421)

(assert (=> b!433244 (= lt!198992 (+!1372 (+!1372 lt!198989 lt!198998) lt!199002))))

(declare-fun lt!198995 () V!16243)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12781 0))(
  ( (Unit!12782) )
))
(declare-fun lt!198997 () Unit!12781)

(declare-fun v!412 () V!16243)

(declare-fun addCommutativeForDiffKeys!382 (ListLongMap!6421 (_ BitVec 64) V!16243 (_ BitVec 64) V!16243) Unit!12781)

(assert (=> b!433244 (= lt!198997 (addCommutativeForDiffKeys!382 lt!198989 k!794 v!412 (select (arr!12704 _keys!709) from!863) lt!198995))))

(declare-fun b!433245 () Bool)

(declare-fun res!255049 () Bool)

(assert (=> b!433245 (=> (not res!255049) (not e!256167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433245 (= res!255049 (validKeyInArray!0 k!794))))

(declare-fun b!433246 () Bool)

(declare-fun res!255055 () Bool)

(assert (=> b!433246 (=> (not res!255055) (not e!256173))))

(declare-fun lt!198988 () array!26515)

(assert (=> b!433246 (= res!255055 (arrayNoDuplicates!0 lt!198988 #b00000000000000000000000000000000 Nil!7540))))

(declare-fun b!433247 () Bool)

(assert (=> b!433247 (= e!256167 e!256173)))

(declare-fun res!255056 () Bool)

(assert (=> b!433247 (=> (not res!255056) (not e!256173))))

(assert (=> b!433247 (= res!255056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198988 mask!1025))))

(assert (=> b!433247 (= lt!198988 (array!26516 (store (arr!12704 _keys!709) i!563 k!794) (size!13056 _keys!709)))))

(declare-fun mapIsEmpty!18651 () Bool)

(declare-fun mapRes!18651 () Bool)

(assert (=> mapIsEmpty!18651 mapRes!18651))

(declare-fun mapNonEmpty!18651 () Bool)

(declare-fun tp!36131 () Bool)

(declare-fun e!256165 () Bool)

(assert (=> mapNonEmpty!18651 (= mapRes!18651 (and tp!36131 e!256165))))

(declare-fun mapRest!18651 () (Array (_ BitVec 32) ValueCell!5333))

(declare-fun mapKey!18651 () (_ BitVec 32))

(declare-fun mapValue!18651 () ValueCell!5333)

(assert (=> mapNonEmpty!18651 (= (arr!12705 _values!549) (store mapRest!18651 mapKey!18651 mapValue!18651))))

(declare-fun b!433248 () Bool)

(declare-fun e!256174 () Unit!12781)

(declare-fun Unit!12783 () Unit!12781)

(assert (=> b!433248 (= e!256174 Unit!12783)))

(declare-fun lt!198993 () Unit!12781)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26515 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12781)

(assert (=> b!433248 (= lt!198993 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433248 false))

(declare-fun b!433249 () Bool)

(declare-fun e!256166 () Bool)

(assert (=> b!433249 (= e!256166 (and e!256171 mapRes!18651))))

(declare-fun condMapEmpty!18651 () Bool)

(declare-fun mapDefault!18651 () ValueCell!5333)

