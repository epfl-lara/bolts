; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41252 () Bool)

(assert start!41252)

(declare-fun b_free!11087 () Bool)

(declare-fun b_next!11087 () Bool)

(assert (=> start!41252 (= b_free!11087 (not b_next!11087))))

(declare-fun tp!39099 () Bool)

(declare-fun b_and!19425 () Bool)

(assert (=> start!41252 (= tp!39099 b_and!19425)))

(declare-fun res!276017 () Bool)

(declare-fun e!269031 () Bool)

(assert (=> start!41252 (=> (not res!276017) (not e!269031))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28613 0))(
  ( (array!28614 (arr!13743 (Array (_ BitVec 32) (_ BitVec 64))) (size!14095 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28613)

(assert (=> start!41252 (= res!276017 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14095 _keys!709))))))

(assert (=> start!41252 e!269031))

(declare-fun tp_is_empty!12425 () Bool)

(assert (=> start!41252 tp_is_empty!12425))

(assert (=> start!41252 tp!39099))

(assert (=> start!41252 true))

(declare-datatypes ((V!17671 0))(
  ( (V!17672 (val!6257 Int)) )
))
(declare-datatypes ((ValueCell!5869 0))(
  ( (ValueCellFull!5869 (v!8535 V!17671)) (EmptyCell!5869) )
))
(declare-datatypes ((array!28615 0))(
  ( (array!28616 (arr!13744 (Array (_ BitVec 32) ValueCell!5869)) (size!14096 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28615)

(declare-fun e!269026 () Bool)

(declare-fun array_inv!9926 (array!28615) Bool)

(assert (=> start!41252 (and (array_inv!9926 _values!549) e!269026)))

(declare-fun array_inv!9927 (array!28613) Bool)

(assert (=> start!41252 (array_inv!9927 _keys!709)))

(declare-fun b!461290 () Bool)

(declare-fun e!269027 () Bool)

(declare-fun e!269029 () Bool)

(assert (=> b!461290 (= e!269027 e!269029)))

(declare-fun res!276018 () Bool)

(assert (=> b!461290 (=> (not res!276018) (not e!269029))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!461290 (= res!276018 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17671)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17671)

(declare-fun lt!208968 () array!28613)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!208965 () array!28615)

(declare-datatypes ((tuple2!8224 0))(
  ( (tuple2!8225 (_1!4122 (_ BitVec 64)) (_2!4122 V!17671)) )
))
(declare-datatypes ((List!8328 0))(
  ( (Nil!8325) (Cons!8324 (h!9180 tuple2!8224) (t!14278 List!8328)) )
))
(declare-datatypes ((ListLongMap!7151 0))(
  ( (ListLongMap!7152 (toList!3591 List!8328)) )
))
(declare-fun lt!208966 () ListLongMap!7151)

(declare-fun getCurrentListMapNoExtraKeys!1759 (array!28613 array!28615 (_ BitVec 32) (_ BitVec 32) V!17671 V!17671 (_ BitVec 32) Int) ListLongMap!7151)

(assert (=> b!461290 (= lt!208966 (getCurrentListMapNoExtraKeys!1759 lt!208968 lt!208965 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17671)

(assert (=> b!461290 (= lt!208965 (array!28616 (store (arr!13744 _values!549) i!563 (ValueCellFull!5869 v!412)) (size!14096 _values!549)))))

(declare-fun lt!208969 () ListLongMap!7151)

(assert (=> b!461290 (= lt!208969 (getCurrentListMapNoExtraKeys!1759 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!20290 () Bool)

(declare-fun mapRes!20290 () Bool)

(assert (=> mapIsEmpty!20290 mapRes!20290))

(declare-fun b!461291 () Bool)

(assert (=> b!461291 (= e!269031 e!269027)))

(declare-fun res!276015 () Bool)

(assert (=> b!461291 (=> (not res!276015) (not e!269027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28613 (_ BitVec 32)) Bool)

(assert (=> b!461291 (= res!276015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208968 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!461291 (= lt!208968 (array!28614 (store (arr!13743 _keys!709) i!563 k!794) (size!14095 _keys!709)))))

(declare-fun b!461292 () Bool)

(declare-fun res!276019 () Bool)

(assert (=> b!461292 (=> (not res!276019) (not e!269027))))

(assert (=> b!461292 (= res!276019 (bvsle from!863 i!563))))

(declare-fun b!461293 () Bool)

(declare-fun e!269030 () Bool)

(assert (=> b!461293 (= e!269026 (and e!269030 mapRes!20290))))

(declare-fun condMapEmpty!20290 () Bool)

(declare-fun mapDefault!20290 () ValueCell!5869)

