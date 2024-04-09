; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40492 () Bool)

(assert start!40492)

(declare-fun b_free!10555 () Bool)

(declare-fun b_next!10555 () Bool)

(assert (=> start!40492 (= b_free!10555 (not b_next!10555))))

(declare-fun tp!37443 () Bool)

(declare-fun b_and!18557 () Bool)

(assert (=> start!40492 (= tp!37443 b_and!18557)))

(declare-fun mapIsEmpty!19431 () Bool)

(declare-fun mapRes!19431 () Bool)

(assert (=> mapIsEmpty!19431 mapRes!19431))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!261919 () Bool)

(declare-datatypes ((V!16931 0))(
  ( (V!16932 (val!5979 Int)) )
))
(declare-datatypes ((tuple2!7776 0))(
  ( (tuple2!7777 (_1!3898 (_ BitVec 64)) (_2!3898 V!16931)) )
))
(declare-datatypes ((List!7876 0))(
  ( (Nil!7873) (Cons!7872 (h!8728 tuple2!7776) (t!13642 List!7876)) )
))
(declare-datatypes ((ListLongMap!6703 0))(
  ( (ListLongMap!6704 (toList!3367 List!7876)) )
))
(declare-fun call!29618 () ListLongMap!6703)

(declare-fun call!29619 () ListLongMap!6703)

(declare-fun v!412 () V!16931)

(declare-fun b!445714 () Bool)

(declare-fun +!1497 (ListLongMap!6703 tuple2!7776) ListLongMap!6703)

(assert (=> b!445714 (= e!261919 (= call!29618 (+!1497 call!29619 (tuple2!7777 k!794 v!412))))))

(declare-fun b!445715 () Bool)

(declare-fun res!264596 () Bool)

(declare-fun e!261920 () Bool)

(assert (=> b!445715 (=> (not res!264596) (not e!261920))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445715 (= res!264596 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19431 () Bool)

(declare-fun tp!37442 () Bool)

(declare-fun e!261916 () Bool)

(assert (=> mapNonEmpty!19431 (= mapRes!19431 (and tp!37442 e!261916))))

(declare-datatypes ((ValueCell!5591 0))(
  ( (ValueCellFull!5591 (v!8226 V!16931)) (EmptyCell!5591) )
))
(declare-datatypes ((array!27505 0))(
  ( (array!27506 (arr!13197 (Array (_ BitVec 32) ValueCell!5591)) (size!13549 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27505)

(declare-fun mapRest!19431 () (Array (_ BitVec 32) ValueCell!5591))

(declare-fun mapValue!19431 () ValueCell!5591)

(declare-fun mapKey!19431 () (_ BitVec 32))

(assert (=> mapNonEmpty!19431 (= (arr!13197 _values!549) (store mapRest!19431 mapKey!19431 mapValue!19431))))

(declare-fun b!445716 () Bool)

(declare-fun res!264601 () Bool)

(assert (=> b!445716 (=> (not res!264601) (not e!261920))))

(declare-datatypes ((array!27507 0))(
  ( (array!27508 (arr!13198 (Array (_ BitVec 32) (_ BitVec 64))) (size!13550 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27507)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27507 (_ BitVec 32)) Bool)

(assert (=> b!445716 (= res!264601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!264599 () Bool)

(assert (=> start!40492 (=> (not res!264599) (not e!261920))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40492 (= res!264599 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13550 _keys!709))))))

(assert (=> start!40492 e!261920))

(declare-fun tp_is_empty!11869 () Bool)

(assert (=> start!40492 tp_is_empty!11869))

(assert (=> start!40492 tp!37443))

(assert (=> start!40492 true))

(declare-fun e!261918 () Bool)

(declare-fun array_inv!9562 (array!27505) Bool)

(assert (=> start!40492 (and (array_inv!9562 _values!549) e!261918)))

(declare-fun array_inv!9563 (array!27507) Bool)

(assert (=> start!40492 (array_inv!9563 _keys!709)))

(declare-fun b!445717 () Bool)

(declare-fun res!264595 () Bool)

(assert (=> b!445717 (=> (not res!264595) (not e!261920))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!445717 (= res!264595 (and (= (size!13549 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13550 _keys!709) (size!13549 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445718 () Bool)

(declare-fun res!264598 () Bool)

(assert (=> b!445718 (=> (not res!264598) (not e!261920))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445718 (= res!264598 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13550 _keys!709))))))

(declare-fun b!445719 () Bool)

(declare-fun res!264602 () Bool)

(declare-fun e!261915 () Bool)

(assert (=> b!445719 (=> (not res!264602) (not e!261915))))

(declare-fun lt!203652 () array!27507)

(declare-datatypes ((List!7877 0))(
  ( (Nil!7874) (Cons!7873 (h!8729 (_ BitVec 64)) (t!13643 List!7877)) )
))
(declare-fun arrayNoDuplicates!0 (array!27507 (_ BitVec 32) List!7877) Bool)

(assert (=> b!445719 (= res!264602 (arrayNoDuplicates!0 lt!203652 #b00000000000000000000000000000000 Nil!7874))))

(declare-fun b!445720 () Bool)

(declare-fun e!261921 () Bool)

(assert (=> b!445720 (= e!261921 tp_is_empty!11869)))

(declare-fun b!445721 () Bool)

(assert (=> b!445721 (= e!261918 (and e!261921 mapRes!19431))))

(declare-fun condMapEmpty!19431 () Bool)

(declare-fun mapDefault!19431 () ValueCell!5591)

