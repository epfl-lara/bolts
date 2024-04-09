; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20084 () Bool)

(assert start!20084)

(declare-fun mapNonEmpty!7949 () Bool)

(declare-fun mapRes!7949 () Bool)

(declare-fun tp!17237 () Bool)

(declare-fun e!129443 () Bool)

(assert (=> mapNonEmpty!7949 (= mapRes!7949 (and tp!17237 e!129443))))

(declare-datatypes ((V!5763 0))(
  ( (V!5764 (val!2338 Int)) )
))
(declare-datatypes ((ValueCell!1950 0))(
  ( (ValueCellFull!1950 (v!4304 V!5763)) (EmptyCell!1950) )
))
(declare-datatypes ((array!8430 0))(
  ( (array!8431 (arr!3965 (Array (_ BitVec 32) ValueCell!1950)) (size!4290 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8430)

(declare-fun mapKey!7949 () (_ BitVec 32))

(declare-fun mapValue!7949 () ValueCell!1950)

(declare-fun mapRest!7949 () (Array (_ BitVec 32) ValueCell!1950))

(assert (=> mapNonEmpty!7949 (= (arr!3965 _values!649) (store mapRest!7949 mapKey!7949 mapValue!7949))))

(declare-fun b!196495 () Bool)

(declare-fun e!129445 () Bool)

(assert (=> b!196495 (= e!129445 false)))

(declare-fun lt!97657 () Bool)

(declare-datatypes ((array!8432 0))(
  ( (array!8433 (arr!3966 (Array (_ BitVec 32) (_ BitVec 64))) (size!4291 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8432)

(declare-datatypes ((List!2498 0))(
  ( (Nil!2495) (Cons!2494 (h!3136 (_ BitVec 64)) (t!7437 List!2498)) )
))
(declare-fun arrayNoDuplicates!0 (array!8432 (_ BitVec 32) List!2498) Bool)

(assert (=> b!196495 (= lt!97657 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2495))))

(declare-fun res!92759 () Bool)

(assert (=> start!20084 (=> (not res!92759) (not e!129445))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20084 (= res!92759 (validMask!0 mask!1149))))

(assert (=> start!20084 e!129445))

(assert (=> start!20084 true))

(declare-fun e!129441 () Bool)

(declare-fun array_inv!2575 (array!8430) Bool)

(assert (=> start!20084 (and (array_inv!2575 _values!649) e!129441)))

(declare-fun array_inv!2576 (array!8432) Bool)

(assert (=> start!20084 (array_inv!2576 _keys!825)))

(declare-fun b!196496 () Bool)

(declare-fun e!129442 () Bool)

(declare-fun tp_is_empty!4587 () Bool)

(assert (=> b!196496 (= e!129442 tp_is_empty!4587)))

(declare-fun mapIsEmpty!7949 () Bool)

(assert (=> mapIsEmpty!7949 mapRes!7949))

(declare-fun b!196497 () Bool)

(assert (=> b!196497 (= e!129441 (and e!129442 mapRes!7949))))

(declare-fun condMapEmpty!7949 () Bool)

(declare-fun mapDefault!7949 () ValueCell!1950)

(assert (=> b!196497 (= condMapEmpty!7949 (= (arr!3965 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1950)) mapDefault!7949)))))

(declare-fun b!196498 () Bool)

(assert (=> b!196498 (= e!129443 tp_is_empty!4587)))

(declare-fun b!196499 () Bool)

(declare-fun res!92761 () Bool)

(assert (=> b!196499 (=> (not res!92761) (not e!129445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8432 (_ BitVec 32)) Bool)

(assert (=> b!196499 (= res!92761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196500 () Bool)

(declare-fun res!92760 () Bool)

(assert (=> b!196500 (=> (not res!92760) (not e!129445))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196500 (= res!92760 (and (= (size!4290 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4291 _keys!825) (size!4290 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20084 res!92759) b!196500))

(assert (= (and b!196500 res!92760) b!196499))

(assert (= (and b!196499 res!92761) b!196495))

(assert (= (and b!196497 condMapEmpty!7949) mapIsEmpty!7949))

(assert (= (and b!196497 (not condMapEmpty!7949)) mapNonEmpty!7949))

(get-info :version)

(assert (= (and mapNonEmpty!7949 ((_ is ValueCellFull!1950) mapValue!7949)) b!196498))

(assert (= (and b!196497 ((_ is ValueCellFull!1950) mapDefault!7949)) b!196496))

(assert (= start!20084 b!196497))

(declare-fun m!223761 () Bool)

(assert (=> mapNonEmpty!7949 m!223761))

(declare-fun m!223763 () Bool)

(assert (=> b!196495 m!223763))

(declare-fun m!223765 () Bool)

(assert (=> start!20084 m!223765))

(declare-fun m!223767 () Bool)

(assert (=> start!20084 m!223767))

(declare-fun m!223769 () Bool)

(assert (=> start!20084 m!223769))

(declare-fun m!223771 () Bool)

(assert (=> b!196499 m!223771))

(check-sat (not b!196495) (not mapNonEmpty!7949) tp_is_empty!4587 (not start!20084) (not b!196499))
(check-sat)
