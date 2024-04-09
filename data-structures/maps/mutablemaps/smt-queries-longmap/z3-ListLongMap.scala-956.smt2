; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20846 () Bool)

(assert start!20846)

(declare-fun b_free!5487 () Bool)

(declare-fun b_next!5487 () Bool)

(assert (=> start!20846 (= b_free!5487 (not b_next!5487))))

(declare-fun tp!19502 () Bool)

(declare-fun b_and!12251 () Bool)

(assert (=> start!20846 (= tp!19502 b_and!12251)))

(declare-fun b!208926 () Bool)

(declare-fun res!101765 () Bool)

(declare-fun e!136191 () Bool)

(assert (=> b!208926 (=> (not res!101765) (not e!136191))))

(declare-datatypes ((array!9900 0))(
  ( (array!9901 (arr!4700 (Array (_ BitVec 32) (_ BitVec 64))) (size!5025 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9900)

(declare-datatypes ((List!3030 0))(
  ( (Nil!3027) (Cons!3026 (h!3668 (_ BitVec 64)) (t!7969 List!3030)) )
))
(declare-fun arrayNoDuplicates!0 (array!9900 (_ BitVec 32) List!3030) Bool)

(assert (=> b!208926 (= res!101765 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3027))))

(declare-fun b!208927 () Bool)

(declare-fun res!101764 () Bool)

(assert (=> b!208927 (=> (not res!101764) (not e!136191))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6779 0))(
  ( (V!6780 (val!2719 Int)) )
))
(declare-datatypes ((ValueCell!2331 0))(
  ( (ValueCellFull!2331 (v!4685 V!6779)) (EmptyCell!2331) )
))
(declare-datatypes ((array!9902 0))(
  ( (array!9903 (arr!4701 (Array (_ BitVec 32) ValueCell!2331)) (size!5026 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9902)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!208927 (= res!101764 (and (= (size!5026 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5025 _keys!825) (size!5026 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9092 () Bool)

(declare-fun mapRes!9092 () Bool)

(assert (=> mapIsEmpty!9092 mapRes!9092))

(declare-fun mapNonEmpty!9092 () Bool)

(declare-fun tp!19501 () Bool)

(declare-fun e!136194 () Bool)

(assert (=> mapNonEmpty!9092 (= mapRes!9092 (and tp!19501 e!136194))))

(declare-fun mapKey!9092 () (_ BitVec 32))

(declare-fun mapValue!9092 () ValueCell!2331)

(declare-fun mapRest!9092 () (Array (_ BitVec 32) ValueCell!2331))

(assert (=> mapNonEmpty!9092 (= (arr!4701 _values!649) (store mapRest!9092 mapKey!9092 mapValue!9092))))

(declare-fun b!208928 () Bool)

(declare-fun res!101767 () Bool)

(assert (=> b!208928 (=> (not res!101767) (not e!136191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9900 (_ BitVec 32)) Bool)

(assert (=> b!208928 (= res!101767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208929 () Bool)

(declare-fun e!136195 () Bool)

(declare-fun e!136193 () Bool)

(assert (=> b!208929 (= e!136195 (and e!136193 mapRes!9092))))

(declare-fun condMapEmpty!9092 () Bool)

(declare-fun mapDefault!9092 () ValueCell!2331)

(assert (=> b!208929 (= condMapEmpty!9092 (= (arr!4701 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2331)) mapDefault!9092)))))

(declare-fun b!208931 () Bool)

(declare-fun res!101763 () Bool)

(assert (=> b!208931 (=> (not res!101763) (not e!136191))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208931 (= res!101763 (= (select (arr!4700 _keys!825) i!601) k0!843))))

(declare-fun b!208932 () Bool)

(declare-fun res!101762 () Bool)

(assert (=> b!208932 (=> (not res!101762) (not e!136191))))

(assert (=> b!208932 (= res!101762 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5025 _keys!825))))))

(declare-fun b!208933 () Bool)

(assert (=> b!208933 (= e!136191 false)))

(declare-fun v!520 () V!6779)

(declare-fun zeroValue!615 () V!6779)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6779)

(declare-datatypes ((tuple2!4110 0))(
  ( (tuple2!4111 (_1!2065 (_ BitVec 64)) (_2!2065 V!6779)) )
))
(declare-datatypes ((List!3031 0))(
  ( (Nil!3028) (Cons!3027 (h!3669 tuple2!4110) (t!7970 List!3031)) )
))
(declare-datatypes ((ListLongMap!3037 0))(
  ( (ListLongMap!3038 (toList!1534 List!3031)) )
))
(declare-fun lt!106914 () ListLongMap!3037)

(declare-fun getCurrentListMapNoExtraKeys!467 (array!9900 array!9902 (_ BitVec 32) (_ BitVec 32) V!6779 V!6779 (_ BitVec 32) Int) ListLongMap!3037)

(assert (=> b!208933 (= lt!106914 (getCurrentListMapNoExtraKeys!467 _keys!825 (array!9903 (store (arr!4701 _values!649) i!601 (ValueCellFull!2331 v!520)) (size!5026 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106915 () ListLongMap!3037)

(assert (=> b!208933 (= lt!106915 (getCurrentListMapNoExtraKeys!467 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208934 () Bool)

(declare-fun tp_is_empty!5349 () Bool)

(assert (=> b!208934 (= e!136194 tp_is_empty!5349)))

(declare-fun b!208935 () Bool)

(assert (=> b!208935 (= e!136193 tp_is_empty!5349)))

(declare-fun res!101766 () Bool)

(assert (=> start!20846 (=> (not res!101766) (not e!136191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20846 (= res!101766 (validMask!0 mask!1149))))

(assert (=> start!20846 e!136191))

(declare-fun array_inv!3107 (array!9902) Bool)

(assert (=> start!20846 (and (array_inv!3107 _values!649) e!136195)))

(assert (=> start!20846 true))

(assert (=> start!20846 tp_is_empty!5349))

(declare-fun array_inv!3108 (array!9900) Bool)

(assert (=> start!20846 (array_inv!3108 _keys!825)))

(assert (=> start!20846 tp!19502))

(declare-fun b!208930 () Bool)

(declare-fun res!101761 () Bool)

(assert (=> b!208930 (=> (not res!101761) (not e!136191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208930 (= res!101761 (validKeyInArray!0 k0!843))))

(assert (= (and start!20846 res!101766) b!208927))

(assert (= (and b!208927 res!101764) b!208928))

(assert (= (and b!208928 res!101767) b!208926))

(assert (= (and b!208926 res!101765) b!208932))

(assert (= (and b!208932 res!101762) b!208930))

(assert (= (and b!208930 res!101761) b!208931))

(assert (= (and b!208931 res!101763) b!208933))

(assert (= (and b!208929 condMapEmpty!9092) mapIsEmpty!9092))

(assert (= (and b!208929 (not condMapEmpty!9092)) mapNonEmpty!9092))

(get-info :version)

(assert (= (and mapNonEmpty!9092 ((_ is ValueCellFull!2331) mapValue!9092)) b!208934))

(assert (= (and b!208929 ((_ is ValueCellFull!2331) mapDefault!9092)) b!208935))

(assert (= start!20846 b!208929))

(declare-fun m!236437 () Bool)

(assert (=> b!208928 m!236437))

(declare-fun m!236439 () Bool)

(assert (=> b!208931 m!236439))

(declare-fun m!236441 () Bool)

(assert (=> b!208933 m!236441))

(declare-fun m!236443 () Bool)

(assert (=> b!208933 m!236443))

(declare-fun m!236445 () Bool)

(assert (=> b!208933 m!236445))

(declare-fun m!236447 () Bool)

(assert (=> b!208930 m!236447))

(declare-fun m!236449 () Bool)

(assert (=> start!20846 m!236449))

(declare-fun m!236451 () Bool)

(assert (=> start!20846 m!236451))

(declare-fun m!236453 () Bool)

(assert (=> start!20846 m!236453))

(declare-fun m!236455 () Bool)

(assert (=> mapNonEmpty!9092 m!236455))

(declare-fun m!236457 () Bool)

(assert (=> b!208926 m!236457))

(check-sat (not b!208930) (not b_next!5487) (not mapNonEmpty!9092) (not b!208928) (not start!20846) (not b!208933) (not b!208926) b_and!12251 tp_is_empty!5349)
(check-sat b_and!12251 (not b_next!5487))
