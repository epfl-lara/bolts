; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40974 () Bool)

(assert start!40974)

(declare-fun b_free!10901 () Bool)

(declare-fun b_next!10901 () Bool)

(assert (=> start!40974 (= b_free!10901 (not b_next!10901))))

(declare-fun tp!38529 () Bool)

(declare-fun b_and!19061 () Bool)

(assert (=> start!40974 (= tp!38529 b_and!19061)))

(declare-fun b!455702 () Bool)

(declare-fun res!271896 () Bool)

(declare-fun e!266355 () Bool)

(assert (=> b!455702 (=> (not res!271896) (not e!266355))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455702 (= res!271896 (validMask!0 mask!1025))))

(declare-fun b!455703 () Bool)

(declare-fun e!266356 () Bool)

(assert (=> b!455703 (= e!266355 e!266356)))

(declare-fun res!271895 () Bool)

(assert (=> b!455703 (=> (not res!271895) (not e!266356))))

(declare-datatypes ((array!28247 0))(
  ( (array!28248 (arr!13564 (Array (_ BitVec 32) (_ BitVec 64))) (size!13916 (_ BitVec 32))) )
))
(declare-fun lt!206389 () array!28247)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28247 (_ BitVec 32)) Bool)

(assert (=> b!455703 (= res!271895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206389 mask!1025))))

(declare-fun _keys!709 () array!28247)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455703 (= lt!206389 (array!28248 (store (arr!13564 _keys!709) i!563 k!794) (size!13916 _keys!709)))))

(declare-fun mapIsEmpty!19999 () Bool)

(declare-fun mapRes!19999 () Bool)

(assert (=> mapIsEmpty!19999 mapRes!19999))

(declare-fun b!455704 () Bool)

(declare-fun res!271893 () Bool)

(assert (=> b!455704 (=> (not res!271893) (not e!266355))))

(assert (=> b!455704 (= res!271893 (or (= (select (arr!13564 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13564 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455705 () Bool)

(declare-fun res!271887 () Bool)

(assert (=> b!455705 (=> (not res!271887) (not e!266355))))

(declare-datatypes ((List!8178 0))(
  ( (Nil!8175) (Cons!8174 (h!9030 (_ BitVec 64)) (t!14014 List!8178)) )
))
(declare-fun arrayNoDuplicates!0 (array!28247 (_ BitVec 32) List!8178) Bool)

(assert (=> b!455705 (= res!271887 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8175))))

(declare-fun b!455706 () Bool)

(declare-fun res!271894 () Bool)

(assert (=> b!455706 (=> (not res!271894) (not e!266355))))

(assert (=> b!455706 (= res!271894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455707 () Bool)

(declare-fun res!271897 () Bool)

(assert (=> b!455707 (=> (not res!271897) (not e!266355))))

(assert (=> b!455707 (= res!271897 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13916 _keys!709))))))

(declare-fun b!455708 () Bool)

(declare-fun res!271888 () Bool)

(assert (=> b!455708 (=> (not res!271888) (not e!266356))))

(assert (=> b!455708 (= res!271888 (arrayNoDuplicates!0 lt!206389 #b00000000000000000000000000000000 Nil!8175))))

(declare-fun b!455709 () Bool)

(assert (=> b!455709 (= e!266356 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17423 0))(
  ( (V!17424 (val!6164 Int)) )
))
(declare-fun minValue!515 () V!17423)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8072 0))(
  ( (tuple2!8073 (_1!4046 (_ BitVec 64)) (_2!4046 V!17423)) )
))
(declare-datatypes ((List!8179 0))(
  ( (Nil!8176) (Cons!8175 (h!9031 tuple2!8072) (t!14015 List!8179)) )
))
(declare-datatypes ((ListLongMap!6999 0))(
  ( (ListLongMap!7000 (toList!3515 List!8179)) )
))
(declare-fun lt!206391 () ListLongMap!6999)

(declare-datatypes ((ValueCell!5776 0))(
  ( (ValueCellFull!5776 (v!8426 V!17423)) (EmptyCell!5776) )
))
(declare-datatypes ((array!28249 0))(
  ( (array!28250 (arr!13565 (Array (_ BitVec 32) ValueCell!5776)) (size!13917 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28249)

(declare-fun zeroValue!515 () V!17423)

(declare-fun v!412 () V!17423)

(declare-fun getCurrentListMapNoExtraKeys!1691 (array!28247 array!28249 (_ BitVec 32) (_ BitVec 32) V!17423 V!17423 (_ BitVec 32) Int) ListLongMap!6999)

(assert (=> b!455709 (= lt!206391 (getCurrentListMapNoExtraKeys!1691 lt!206389 (array!28250 (store (arr!13565 _values!549) i!563 (ValueCellFull!5776 v!412)) (size!13917 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206390 () ListLongMap!6999)

(assert (=> b!455709 (= lt!206390 (getCurrentListMapNoExtraKeys!1691 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455710 () Bool)

(declare-fun e!266358 () Bool)

(declare-fun tp_is_empty!12239 () Bool)

(assert (=> b!455710 (= e!266358 tp_is_empty!12239)))

(declare-fun b!455711 () Bool)

(declare-fun res!271898 () Bool)

(assert (=> b!455711 (=> (not res!271898) (not e!266355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455711 (= res!271898 (validKeyInArray!0 k!794))))

(declare-fun b!455713 () Bool)

(declare-fun res!271892 () Bool)

(assert (=> b!455713 (=> (not res!271892) (not e!266355))))

(declare-fun arrayContainsKey!0 (array!28247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455713 (= res!271892 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455714 () Bool)

(declare-fun e!266360 () Bool)

(assert (=> b!455714 (= e!266360 tp_is_empty!12239)))

(declare-fun b!455715 () Bool)

(declare-fun res!271889 () Bool)

(assert (=> b!455715 (=> (not res!271889) (not e!266355))))

(assert (=> b!455715 (= res!271889 (and (= (size!13917 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13916 _keys!709) (size!13917 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19999 () Bool)

(declare-fun tp!38530 () Bool)

(assert (=> mapNonEmpty!19999 (= mapRes!19999 (and tp!38530 e!266358))))

(declare-fun mapValue!19999 () ValueCell!5776)

(declare-fun mapRest!19999 () (Array (_ BitVec 32) ValueCell!5776))

(declare-fun mapKey!19999 () (_ BitVec 32))

(assert (=> mapNonEmpty!19999 (= (arr!13565 _values!549) (store mapRest!19999 mapKey!19999 mapValue!19999))))

(declare-fun b!455716 () Bool)

(declare-fun e!266357 () Bool)

(assert (=> b!455716 (= e!266357 (and e!266360 mapRes!19999))))

(declare-fun condMapEmpty!19999 () Bool)

(declare-fun mapDefault!19999 () ValueCell!5776)

