; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41024 () Bool)

(assert start!41024)

(declare-fun b_free!10951 () Bool)

(declare-fun b_next!10951 () Bool)

(assert (=> start!41024 (= b_free!10951 (not b_next!10951))))

(declare-fun tp!38679 () Bool)

(declare-fun b_and!19111 () Bool)

(assert (=> start!41024 (= tp!38679 b_and!19111)))

(declare-fun mapNonEmpty!20074 () Bool)

(declare-fun mapRes!20074 () Bool)

(declare-fun tp!38680 () Bool)

(declare-fun e!266886 () Bool)

(assert (=> mapNonEmpty!20074 (= mapRes!20074 (and tp!38680 e!266886))))

(declare-fun mapKey!20074 () (_ BitVec 32))

(declare-datatypes ((V!17491 0))(
  ( (V!17492 (val!6189 Int)) )
))
(declare-datatypes ((ValueCell!5801 0))(
  ( (ValueCellFull!5801 (v!8451 V!17491)) (EmptyCell!5801) )
))
(declare-datatypes ((array!28345 0))(
  ( (array!28346 (arr!13613 (Array (_ BitVec 32) ValueCell!5801)) (size!13965 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28345)

(declare-fun mapRest!20074 () (Array (_ BitVec 32) ValueCell!5801))

(declare-fun mapValue!20074 () ValueCell!5801)

(assert (=> mapNonEmpty!20074 (= (arr!13613 _values!549) (store mapRest!20074 mapKey!20074 mapValue!20074))))

(declare-fun b!456903 () Bool)

(declare-fun tp_is_empty!12289 () Bool)

(assert (=> b!456903 (= e!266886 tp_is_empty!12289)))

(declare-fun defaultEntry!557 () Int)

(declare-fun b!456904 () Bool)

(declare-datatypes ((tuple2!8116 0))(
  ( (tuple2!8117 (_1!4068 (_ BitVec 64)) (_2!4068 V!17491)) )
))
(declare-datatypes ((List!8219 0))(
  ( (Nil!8216) (Cons!8215 (h!9071 tuple2!8116) (t!14057 List!8219)) )
))
(declare-datatypes ((ListLongMap!7043 0))(
  ( (ListLongMap!7044 (toList!3537 List!8219)) )
))
(declare-fun lt!206716 () ListLongMap!7043)

(declare-fun e!266883 () Bool)

(declare-fun lt!206719 () ListLongMap!7043)

(declare-datatypes ((array!28347 0))(
  ( (array!28348 (arr!13614 (Array (_ BitVec 32) (_ BitVec 64))) (size!13966 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28347)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun +!1557 (ListLongMap!7043 tuple2!8116) ListLongMap!7043)

(declare-fun get!6707 (ValueCell!5801 V!17491) V!17491)

(declare-fun dynLambda!869 (Int (_ BitVec 64)) V!17491)

(assert (=> b!456904 (= e!266883 (= lt!206716 (+!1557 lt!206719 (tuple2!8117 (select (arr!13614 _keys!709) from!863) (get!6707 (select (arr!13613 _values!549) from!863) (dynLambda!869 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!456905 () Bool)

(declare-fun res!272874 () Bool)

(declare-fun e!266881 () Bool)

(assert (=> b!456905 (=> (not res!272874) (not e!266881))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456905 (= res!272874 (bvsle from!863 i!563))))

(declare-fun b!456906 () Bool)

(declare-fun res!272871 () Bool)

(assert (=> b!456906 (=> (not res!272871) (not e!266881))))

(declare-fun lt!206717 () array!28347)

(declare-datatypes ((List!8220 0))(
  ( (Nil!8217) (Cons!8216 (h!9072 (_ BitVec 64)) (t!14058 List!8220)) )
))
(declare-fun arrayNoDuplicates!0 (array!28347 (_ BitVec 32) List!8220) Bool)

(assert (=> b!456906 (= res!272871 (arrayNoDuplicates!0 lt!206717 #b00000000000000000000000000000000 Nil!8217))))

(declare-fun b!456907 () Bool)

(declare-fun e!266888 () Bool)

(assert (=> b!456907 (= e!266888 e!266881)))

(declare-fun res!272865 () Bool)

(assert (=> b!456907 (=> (not res!272865) (not e!266881))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28347 (_ BitVec 32)) Bool)

(assert (=> b!456907 (= res!272865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206717 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!456907 (= lt!206717 (array!28348 (store (arr!13614 _keys!709) i!563 k!794) (size!13966 _keys!709)))))

(declare-fun b!456908 () Bool)

(declare-fun res!272866 () Bool)

(assert (=> b!456908 (=> (not res!272866) (not e!266888))))

(assert (=> b!456908 (= res!272866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456909 () Bool)

(declare-fun res!272867 () Bool)

(assert (=> b!456909 (=> (not res!272867) (not e!266888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456909 (= res!272867 (validMask!0 mask!1025))))

(declare-fun b!456911 () Bool)

(declare-fun e!266887 () Bool)

(declare-fun e!266884 () Bool)

(assert (=> b!456911 (= e!266887 (and e!266884 mapRes!20074))))

(declare-fun condMapEmpty!20074 () Bool)

(declare-fun mapDefault!20074 () ValueCell!5801)

