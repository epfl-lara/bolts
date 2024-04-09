; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41236 () Bool)

(assert start!41236)

(declare-fun b_free!11071 () Bool)

(declare-fun b_next!11071 () Bool)

(assert (=> start!41236 (= b_free!11071 (not b_next!11071))))

(declare-fun tp!39051 () Bool)

(declare-fun b_and!19409 () Bool)

(assert (=> start!41236 (= tp!39051 b_and!19409)))

(declare-fun b!460899 () Bool)

(declare-fun e!268857 () Bool)

(declare-fun e!268851 () Bool)

(assert (=> b!460899 (= e!268857 e!268851)))

(declare-fun res!275700 () Bool)

(assert (=> b!460899 (=> (not res!275700) (not e!268851))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460899 (= res!275700 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17651 0))(
  ( (V!17652 (val!6249 Int)) )
))
(declare-fun minValue!515 () V!17651)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17651)

(declare-datatypes ((array!28581 0))(
  ( (array!28582 (arr!13727 (Array (_ BitVec 32) (_ BitVec 64))) (size!14079 (_ BitVec 32))) )
))
(declare-fun lt!208849 () array!28581)

(declare-datatypes ((ValueCell!5861 0))(
  ( (ValueCellFull!5861 (v!8527 V!17651)) (EmptyCell!5861) )
))
(declare-datatypes ((array!28583 0))(
  ( (array!28584 (arr!13728 (Array (_ BitVec 32) ValueCell!5861)) (size!14080 (_ BitVec 32))) )
))
(declare-fun lt!208848 () array!28583)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!8214 0))(
  ( (tuple2!8215 (_1!4117 (_ BitVec 64)) (_2!4117 V!17651)) )
))
(declare-datatypes ((List!8316 0))(
  ( (Nil!8313) (Cons!8312 (h!9168 tuple2!8214) (t!14266 List!8316)) )
))
(declare-datatypes ((ListLongMap!7141 0))(
  ( (ListLongMap!7142 (toList!3586 List!8316)) )
))
(declare-fun lt!208847 () ListLongMap!7141)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1754 (array!28581 array!28583 (_ BitVec 32) (_ BitVec 32) V!17651 V!17651 (_ BitVec 32) Int) ListLongMap!7141)

(assert (=> b!460899 (= lt!208847 (getCurrentListMapNoExtraKeys!1754 lt!208849 lt!208848 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28583)

(declare-fun v!412 () V!17651)

(assert (=> b!460899 (= lt!208848 (array!28584 (store (arr!13728 _values!549) i!563 (ValueCellFull!5861 v!412)) (size!14080 _values!549)))))

(declare-fun lt!208846 () ListLongMap!7141)

(declare-fun _keys!709 () array!28581)

(assert (=> b!460899 (= lt!208846 (getCurrentListMapNoExtraKeys!1754 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460900 () Bool)

(declare-fun res!275691 () Bool)

(declare-fun e!268853 () Bool)

(assert (=> b!460900 (=> (not res!275691) (not e!268853))))

(declare-datatypes ((List!8317 0))(
  ( (Nil!8314) (Cons!8313 (h!9169 (_ BitVec 64)) (t!14267 List!8317)) )
))
(declare-fun arrayNoDuplicates!0 (array!28581 (_ BitVec 32) List!8317) Bool)

(assert (=> b!460900 (= res!275691 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8314))))

(declare-fun b!460901 () Bool)

(declare-fun e!268855 () Bool)

(declare-fun tp_is_empty!12409 () Bool)

(assert (=> b!460901 (= e!268855 tp_is_empty!12409)))

(declare-fun b!460902 () Bool)

(declare-fun res!275694 () Bool)

(assert (=> b!460902 (=> (not res!275694) (not e!268853))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460902 (= res!275694 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!460903 () Bool)

(declare-fun res!275698 () Bool)

(assert (=> b!460903 (=> (not res!275698) (not e!268857))))

(assert (=> b!460903 (= res!275698 (bvsle from!863 i!563))))

(declare-fun b!460904 () Bool)

(declare-fun res!275695 () Bool)

(assert (=> b!460904 (=> (not res!275695) (not e!268853))))

(assert (=> b!460904 (= res!275695 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14079 _keys!709))))))

(declare-fun b!460905 () Bool)

(declare-fun res!275690 () Bool)

(assert (=> b!460905 (=> (not res!275690) (not e!268853))))

(assert (=> b!460905 (= res!275690 (and (= (size!14080 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14079 _keys!709) (size!14080 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460906 () Bool)

(declare-fun res!275696 () Bool)

(assert (=> b!460906 (=> (not res!275696) (not e!268853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28581 (_ BitVec 32)) Bool)

(assert (=> b!460906 (= res!275696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460907 () Bool)

(declare-fun e!268854 () Bool)

(declare-fun mapRes!20266 () Bool)

(assert (=> b!460907 (= e!268854 (and e!268855 mapRes!20266))))

(declare-fun condMapEmpty!20266 () Bool)

(declare-fun mapDefault!20266 () ValueCell!5861)

