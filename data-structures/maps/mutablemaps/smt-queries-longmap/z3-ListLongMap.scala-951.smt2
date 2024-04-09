; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20816 () Bool)

(assert start!20816)

(declare-fun b_free!5457 () Bool)

(declare-fun b_next!5457 () Bool)

(assert (=> start!20816 (= b_free!5457 (not b_next!5457))))

(declare-fun tp!19412 () Bool)

(declare-fun b_and!12221 () Bool)

(assert (=> start!20816 (= tp!19412 b_and!12221)))

(declare-fun b!208476 () Bool)

(declare-fun e!135966 () Bool)

(declare-fun tp_is_empty!5319 () Bool)

(assert (=> b!208476 (= e!135966 tp_is_empty!5319)))

(declare-fun b!208477 () Bool)

(declare-fun e!135969 () Bool)

(assert (=> b!208477 (= e!135969 tp_is_empty!5319)))

(declare-fun b!208478 () Bool)

(declare-fun res!101446 () Bool)

(declare-fun e!135970 () Bool)

(assert (=> b!208478 (=> (not res!101446) (not e!135970))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9840 0))(
  ( (array!9841 (arr!4670 (Array (_ BitVec 32) (_ BitVec 64))) (size!4995 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9840)

(assert (=> b!208478 (= res!101446 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4995 _keys!825))))))

(declare-fun b!208479 () Bool)

(declare-fun res!101452 () Bool)

(assert (=> b!208479 (=> (not res!101452) (not e!135970))))

(declare-datatypes ((List!3013 0))(
  ( (Nil!3010) (Cons!3009 (h!3651 (_ BitVec 64)) (t!7952 List!3013)) )
))
(declare-fun arrayNoDuplicates!0 (array!9840 (_ BitVec 32) List!3013) Bool)

(assert (=> b!208479 (= res!101452 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3010))))

(declare-fun b!208480 () Bool)

(declare-fun res!101450 () Bool)

(assert (=> b!208480 (=> (not res!101450) (not e!135970))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!208480 (= res!101450 (= (select (arr!4670 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!9047 () Bool)

(declare-fun mapRes!9047 () Bool)

(declare-fun tp!19411 () Bool)

(assert (=> mapNonEmpty!9047 (= mapRes!9047 (and tp!19411 e!135969))))

(declare-datatypes ((V!6739 0))(
  ( (V!6740 (val!2704 Int)) )
))
(declare-datatypes ((ValueCell!2316 0))(
  ( (ValueCellFull!2316 (v!4670 V!6739)) (EmptyCell!2316) )
))
(declare-fun mapValue!9047 () ValueCell!2316)

(declare-fun mapRest!9047 () (Array (_ BitVec 32) ValueCell!2316))

(declare-fun mapKey!9047 () (_ BitVec 32))

(declare-datatypes ((array!9842 0))(
  ( (array!9843 (arr!4671 (Array (_ BitVec 32) ValueCell!2316)) (size!4996 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9842)

(assert (=> mapNonEmpty!9047 (= (arr!4671 _values!649) (store mapRest!9047 mapKey!9047 mapValue!9047))))

(declare-fun b!208481 () Bool)

(declare-fun res!101448 () Bool)

(assert (=> b!208481 (=> (not res!101448) (not e!135970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208481 (= res!101448 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!9047 () Bool)

(assert (=> mapIsEmpty!9047 mapRes!9047))

(declare-fun res!101451 () Bool)

(assert (=> start!20816 (=> (not res!101451) (not e!135970))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20816 (= res!101451 (validMask!0 mask!1149))))

(assert (=> start!20816 e!135970))

(declare-fun e!135967 () Bool)

(declare-fun array_inv!3087 (array!9842) Bool)

(assert (=> start!20816 (and (array_inv!3087 _values!649) e!135967)))

(assert (=> start!20816 true))

(assert (=> start!20816 tp_is_empty!5319))

(declare-fun array_inv!3088 (array!9840) Bool)

(assert (=> start!20816 (array_inv!3088 _keys!825)))

(assert (=> start!20816 tp!19412))

(declare-fun b!208482 () Bool)

(assert (=> b!208482 (= e!135967 (and e!135966 mapRes!9047))))

(declare-fun condMapEmpty!9047 () Bool)

(declare-fun mapDefault!9047 () ValueCell!2316)

(assert (=> b!208482 (= condMapEmpty!9047 (= (arr!4671 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2316)) mapDefault!9047)))))

(declare-fun b!208483 () Bool)

(declare-fun res!101449 () Bool)

(assert (=> b!208483 (=> (not res!101449) (not e!135970))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208483 (= res!101449 (and (= (size!4996 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4995 _keys!825) (size!4996 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208484 () Bool)

(declare-fun res!101447 () Bool)

(assert (=> b!208484 (=> (not res!101447) (not e!135970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9840 (_ BitVec 32)) Bool)

(assert (=> b!208484 (= res!101447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208485 () Bool)

(assert (=> b!208485 (= e!135970 false)))

(declare-datatypes ((tuple2!4094 0))(
  ( (tuple2!4095 (_1!2057 (_ BitVec 64)) (_2!2057 V!6739)) )
))
(declare-datatypes ((List!3014 0))(
  ( (Nil!3011) (Cons!3010 (h!3652 tuple2!4094) (t!7953 List!3014)) )
))
(declare-datatypes ((ListLongMap!3021 0))(
  ( (ListLongMap!3022 (toList!1526 List!3014)) )
))
(declare-fun lt!106825 () ListLongMap!3021)

(declare-fun v!520 () V!6739)

(declare-fun zeroValue!615 () V!6739)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6739)

(declare-fun getCurrentListMapNoExtraKeys!459 (array!9840 array!9842 (_ BitVec 32) (_ BitVec 32) V!6739 V!6739 (_ BitVec 32) Int) ListLongMap!3021)

(assert (=> b!208485 (= lt!106825 (getCurrentListMapNoExtraKeys!459 _keys!825 (array!9843 (store (arr!4671 _values!649) i!601 (ValueCellFull!2316 v!520)) (size!4996 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106824 () ListLongMap!3021)

(assert (=> b!208485 (= lt!106824 (getCurrentListMapNoExtraKeys!459 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20816 res!101451) b!208483))

(assert (= (and b!208483 res!101449) b!208484))

(assert (= (and b!208484 res!101447) b!208479))

(assert (= (and b!208479 res!101452) b!208478))

(assert (= (and b!208478 res!101446) b!208481))

(assert (= (and b!208481 res!101448) b!208480))

(assert (= (and b!208480 res!101450) b!208485))

(assert (= (and b!208482 condMapEmpty!9047) mapIsEmpty!9047))

(assert (= (and b!208482 (not condMapEmpty!9047)) mapNonEmpty!9047))

(get-info :version)

(assert (= (and mapNonEmpty!9047 ((_ is ValueCellFull!2316) mapValue!9047)) b!208477))

(assert (= (and b!208482 ((_ is ValueCellFull!2316) mapDefault!9047)) b!208476))

(assert (= start!20816 b!208482))

(declare-fun m!236107 () Bool)

(assert (=> b!208481 m!236107))

(declare-fun m!236109 () Bool)

(assert (=> start!20816 m!236109))

(declare-fun m!236111 () Bool)

(assert (=> start!20816 m!236111))

(declare-fun m!236113 () Bool)

(assert (=> start!20816 m!236113))

(declare-fun m!236115 () Bool)

(assert (=> b!208480 m!236115))

(declare-fun m!236117 () Bool)

(assert (=> mapNonEmpty!9047 m!236117))

(declare-fun m!236119 () Bool)

(assert (=> b!208485 m!236119))

(declare-fun m!236121 () Bool)

(assert (=> b!208485 m!236121))

(declare-fun m!236123 () Bool)

(assert (=> b!208485 m!236123))

(declare-fun m!236125 () Bool)

(assert (=> b!208484 m!236125))

(declare-fun m!236127 () Bool)

(assert (=> b!208479 m!236127))

(check-sat b_and!12221 tp_is_empty!5319 (not b_next!5457) (not b!208485) (not b!208481) (not mapNonEmpty!9047) (not b!208484) (not b!208479) (not start!20816))
(check-sat b_and!12221 (not b_next!5457))
