; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40988 () Bool)

(assert start!40988)

(declare-fun b_free!10915 () Bool)

(declare-fun b_next!10915 () Bool)

(assert (=> start!40988 (= b_free!10915 (not b_next!10915))))

(declare-fun tp!38572 () Bool)

(declare-fun b_and!19075 () Bool)

(assert (=> start!40988 (= tp!38572 b_and!19075)))

(declare-fun b!456017 () Bool)

(declare-fun e!266484 () Bool)

(declare-fun e!266486 () Bool)

(assert (=> b!456017 (= e!266484 e!266486)))

(declare-fun res!272150 () Bool)

(assert (=> b!456017 (=> (not res!272150) (not e!266486))))

(declare-datatypes ((array!28273 0))(
  ( (array!28274 (arr!13577 (Array (_ BitVec 32) (_ BitVec 64))) (size!13929 (_ BitVec 32))) )
))
(declare-fun lt!206453 () array!28273)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28273 (_ BitVec 32)) Bool)

(assert (=> b!456017 (= res!272150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206453 mask!1025))))

(declare-fun _keys!709 () array!28273)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456017 (= lt!206453 (array!28274 (store (arr!13577 _keys!709) i!563 k!794) (size!13929 _keys!709)))))

(declare-fun res!272142 () Bool)

(assert (=> start!40988 (=> (not res!272142) (not e!266484))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40988 (= res!272142 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13929 _keys!709))))))

(assert (=> start!40988 e!266484))

(declare-fun tp_is_empty!12253 () Bool)

(assert (=> start!40988 tp_is_empty!12253))

(assert (=> start!40988 tp!38572))

(assert (=> start!40988 true))

(declare-datatypes ((V!17443 0))(
  ( (V!17444 (val!6171 Int)) )
))
(declare-datatypes ((ValueCell!5783 0))(
  ( (ValueCellFull!5783 (v!8433 V!17443)) (EmptyCell!5783) )
))
(declare-datatypes ((array!28275 0))(
  ( (array!28276 (arr!13578 (Array (_ BitVec 32) ValueCell!5783)) (size!13930 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28275)

(declare-fun e!266485 () Bool)

(declare-fun array_inv!9822 (array!28275) Bool)

(assert (=> start!40988 (and (array_inv!9822 _values!549) e!266485)))

(declare-fun array_inv!9823 (array!28273) Bool)

(assert (=> start!40988 (array_inv!9823 _keys!709)))

(declare-fun b!456018 () Bool)

(declare-fun res!272141 () Bool)

(assert (=> b!456018 (=> (not res!272141) (not e!266484))))

(declare-datatypes ((List!8189 0))(
  ( (Nil!8186) (Cons!8185 (h!9041 (_ BitVec 64)) (t!14025 List!8189)) )
))
(declare-fun arrayNoDuplicates!0 (array!28273 (_ BitVec 32) List!8189) Bool)

(assert (=> b!456018 (= res!272141 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8186))))

(declare-fun b!456019 () Bool)

(declare-fun res!272146 () Bool)

(assert (=> b!456019 (=> (not res!272146) (not e!266484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456019 (= res!272146 (validKeyInArray!0 k!794))))

(declare-fun b!456020 () Bool)

(assert (=> b!456020 (= e!266486 (and (not (= from!863 i!563)) (bvslt from!863 i!563) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13929 _keys!709)) (bvsge (bvsub (size!13929 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13929 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8082 0))(
  ( (tuple2!8083 (_1!4051 (_ BitVec 64)) (_2!4051 V!17443)) )
))
(declare-datatypes ((List!8190 0))(
  ( (Nil!8187) (Cons!8186 (h!9042 tuple2!8082) (t!14026 List!8190)) )
))
(declare-datatypes ((ListLongMap!7009 0))(
  ( (ListLongMap!7010 (toList!3520 List!8190)) )
))
(declare-fun lt!206454 () ListLongMap!7009)

(declare-fun minValue!515 () V!17443)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17443)

(declare-fun v!412 () V!17443)

(declare-fun getCurrentListMapNoExtraKeys!1696 (array!28273 array!28275 (_ BitVec 32) (_ BitVec 32) V!17443 V!17443 (_ BitVec 32) Int) ListLongMap!7009)

(assert (=> b!456020 (= lt!206454 (getCurrentListMapNoExtraKeys!1696 lt!206453 (array!28276 (store (arr!13578 _values!549) i!563 (ValueCellFull!5783 v!412)) (size!13930 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206452 () ListLongMap!7009)

(assert (=> b!456020 (= lt!206452 (getCurrentListMapNoExtraKeys!1696 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456021 () Bool)

(declare-fun e!266481 () Bool)

(declare-fun mapRes!20020 () Bool)

(assert (=> b!456021 (= e!266485 (and e!266481 mapRes!20020))))

(declare-fun condMapEmpty!20020 () Bool)

(declare-fun mapDefault!20020 () ValueCell!5783)

