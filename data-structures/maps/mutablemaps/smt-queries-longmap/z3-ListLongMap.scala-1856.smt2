; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33526 () Bool)

(assert start!33526)

(declare-fun b_free!6807 () Bool)

(declare-fun b_next!6807 () Bool)

(assert (=> start!33526 (= b_free!6807 (not b_next!6807))))

(declare-fun tp!23915 () Bool)

(declare-fun b_and!13999 () Bool)

(assert (=> start!33526 (= tp!23915 b_and!13999)))

(declare-fun b!332419 () Bool)

(declare-fun e!204143 () Bool)

(declare-fun e!204144 () Bool)

(declare-fun mapRes!11526 () Bool)

(assert (=> b!332419 (= e!204143 (and e!204144 mapRes!11526))))

(declare-fun condMapEmpty!11526 () Bool)

(declare-datatypes ((V!9989 0))(
  ( (V!9990 (val!3424 Int)) )
))
(declare-datatypes ((ValueCell!3036 0))(
  ( (ValueCellFull!3036 (v!5579 V!9989)) (EmptyCell!3036) )
))
(declare-datatypes ((array!17111 0))(
  ( (array!17112 (arr!8086 (Array (_ BitVec 32) ValueCell!3036)) (size!8438 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17111)

(declare-fun mapDefault!11526 () ValueCell!3036)

(assert (=> b!332419 (= condMapEmpty!11526 (= (arr!8086 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3036)) mapDefault!11526)))))

(declare-fun b!332420 () Bool)

(declare-fun tp_is_empty!6759 () Bool)

(assert (=> b!332420 (= e!204144 tp_is_empty!6759)))

(declare-fun b!332421 () Bool)

(declare-fun e!204147 () Bool)

(assert (=> b!332421 (= e!204147 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!9989)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17113 0))(
  ( (array!17114 (arr!8087 (Array (_ BitVec 32) (_ BitVec 64))) (size!8439 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17113)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!9989)

(declare-fun lt!158994 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((tuple2!4982 0))(
  ( (tuple2!4983 (_1!2501 (_ BitVec 64)) (_2!2501 V!9989)) )
))
(declare-datatypes ((List!4620 0))(
  ( (Nil!4617) (Cons!4616 (h!5472 tuple2!4982) (t!9710 List!4620)) )
))
(declare-datatypes ((ListLongMap!3909 0))(
  ( (ListLongMap!3910 (toList!1970 List!4620)) )
))
(declare-fun contains!2007 (ListLongMap!3909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1493 (array!17113 array!17111 (_ BitVec 32) (_ BitVec 32) V!9989 V!9989 (_ BitVec 32) Int) ListLongMap!3909)

(assert (=> b!332421 (= lt!158994 (contains!2007 (getCurrentListMap!1493 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348))))

(declare-fun b!332422 () Bool)

(declare-fun res!183201 () Bool)

(assert (=> b!332422 (=> (not res!183201) (not e!204147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17113 (_ BitVec 32)) Bool)

(assert (=> b!332422 (= res!183201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332423 () Bool)

(declare-fun e!204145 () Bool)

(assert (=> b!332423 (= e!204145 tp_is_empty!6759)))

(declare-fun b!332424 () Bool)

(declare-fun res!183199 () Bool)

(assert (=> b!332424 (=> (not res!183199) (not e!204147))))

(declare-datatypes ((List!4621 0))(
  ( (Nil!4618) (Cons!4617 (h!5473 (_ BitVec 64)) (t!9711 List!4621)) )
))
(declare-fun arrayNoDuplicates!0 (array!17113 (_ BitVec 32) List!4621) Bool)

(assert (=> b!332424 (= res!183199 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4618))))

(declare-fun mapIsEmpty!11526 () Bool)

(assert (=> mapIsEmpty!11526 mapRes!11526))

(declare-fun res!183203 () Bool)

(assert (=> start!33526 (=> (not res!183203) (not e!204147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33526 (= res!183203 (validMask!0 mask!2385))))

(assert (=> start!33526 e!204147))

(assert (=> start!33526 true))

(assert (=> start!33526 tp_is_empty!6759))

(assert (=> start!33526 tp!23915))

(declare-fun array_inv!6014 (array!17111) Bool)

(assert (=> start!33526 (and (array_inv!6014 _values!1525) e!204143)))

(declare-fun array_inv!6015 (array!17113) Bool)

(assert (=> start!33526 (array_inv!6015 _keys!1895)))

(declare-fun b!332425 () Bool)

(declare-fun res!183200 () Bool)

(assert (=> b!332425 (=> (not res!183200) (not e!204147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332425 (= res!183200 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!11526 () Bool)

(declare-fun tp!23916 () Bool)

(assert (=> mapNonEmpty!11526 (= mapRes!11526 (and tp!23916 e!204145))))

(declare-fun mapKey!11526 () (_ BitVec 32))

(declare-fun mapRest!11526 () (Array (_ BitVec 32) ValueCell!3036))

(declare-fun mapValue!11526 () ValueCell!3036)

(assert (=> mapNonEmpty!11526 (= (arr!8086 _values!1525) (store mapRest!11526 mapKey!11526 mapValue!11526))))

(declare-fun b!332426 () Bool)

(declare-fun res!183202 () Bool)

(assert (=> b!332426 (=> (not res!183202) (not e!204147))))

(assert (=> b!332426 (= res!183202 (and (= (size!8438 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8439 _keys!1895) (size!8438 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!33526 res!183203) b!332426))

(assert (= (and b!332426 res!183202) b!332422))

(assert (= (and b!332422 res!183201) b!332424))

(assert (= (and b!332424 res!183199) b!332425))

(assert (= (and b!332425 res!183200) b!332421))

(assert (= (and b!332419 condMapEmpty!11526) mapIsEmpty!11526))

(assert (= (and b!332419 (not condMapEmpty!11526)) mapNonEmpty!11526))

(get-info :version)

(assert (= (and mapNonEmpty!11526 ((_ is ValueCellFull!3036) mapValue!11526)) b!332423))

(assert (= (and b!332419 ((_ is ValueCellFull!3036) mapDefault!11526)) b!332420))

(assert (= start!33526 b!332419))

(declare-fun m!336917 () Bool)

(assert (=> start!33526 m!336917))

(declare-fun m!336919 () Bool)

(assert (=> start!33526 m!336919))

(declare-fun m!336921 () Bool)

(assert (=> start!33526 m!336921))

(declare-fun m!336923 () Bool)

(assert (=> mapNonEmpty!11526 m!336923))

(declare-fun m!336925 () Bool)

(assert (=> b!332424 m!336925))

(declare-fun m!336927 () Bool)

(assert (=> b!332421 m!336927))

(assert (=> b!332421 m!336927))

(declare-fun m!336929 () Bool)

(assert (=> b!332421 m!336929))

(declare-fun m!336931 () Bool)

(assert (=> b!332422 m!336931))

(declare-fun m!336933 () Bool)

(assert (=> b!332425 m!336933))

(check-sat (not b_next!6807) (not b!332424) (not start!33526) (not b!332421) (not b!332425) (not mapNonEmpty!11526) (not b!332422) tp_is_empty!6759 b_and!13999)
(check-sat b_and!13999 (not b_next!6807))
