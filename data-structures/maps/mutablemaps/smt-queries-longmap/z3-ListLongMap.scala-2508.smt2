; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38876 () Bool)

(assert start!38876)

(declare-fun b!405923 () Bool)

(declare-fun res!234491 () Bool)

(declare-fun e!243982 () Bool)

(assert (=> b!405923 (=> (not res!234491) (not e!243982))))

(declare-datatypes ((array!24431 0))(
  ( (array!24432 (arr!11662 (Array (_ BitVec 32) (_ BitVec 64))) (size!12014 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24431)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405923 (= res!234491 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405924 () Bool)

(declare-fun res!234486 () Bool)

(assert (=> b!405924 (=> (not res!234486) (not e!243982))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24431 (_ BitVec 32)) Bool)

(assert (=> b!405924 (= res!234486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405925 () Bool)

(declare-fun res!234483 () Bool)

(assert (=> b!405925 (=> (not res!234483) (not e!243982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405925 (= res!234483 (validMask!0 mask!1025))))

(declare-fun b!405926 () Bool)

(declare-fun e!243980 () Bool)

(declare-fun tp_is_empty!10287 () Bool)

(assert (=> b!405926 (= e!243980 tp_is_empty!10287)))

(declare-fun res!234487 () Bool)

(assert (=> start!38876 (=> (not res!234487) (not e!243982))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38876 (= res!234487 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12014 _keys!709))))))

(assert (=> start!38876 e!243982))

(assert (=> start!38876 true))

(declare-datatypes ((V!14821 0))(
  ( (V!14822 (val!5188 Int)) )
))
(declare-datatypes ((ValueCell!4800 0))(
  ( (ValueCellFull!4800 (v!7431 V!14821)) (EmptyCell!4800) )
))
(declare-datatypes ((array!24433 0))(
  ( (array!24434 (arr!11663 (Array (_ BitVec 32) ValueCell!4800)) (size!12015 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24433)

(declare-fun e!243983 () Bool)

(declare-fun array_inv!8522 (array!24433) Bool)

(assert (=> start!38876 (and (array_inv!8522 _values!549) e!243983)))

(declare-fun array_inv!8523 (array!24431) Bool)

(assert (=> start!38876 (array_inv!8523 _keys!709)))

(declare-fun b!405927 () Bool)

(declare-fun res!234484 () Bool)

(assert (=> b!405927 (=> (not res!234484) (not e!243982))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405927 (= res!234484 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12014 _keys!709))))))

(declare-fun b!405928 () Bool)

(declare-fun e!243984 () Bool)

(assert (=> b!405928 (= e!243984 tp_is_empty!10287)))

(declare-fun mapNonEmpty!17052 () Bool)

(declare-fun mapRes!17052 () Bool)

(declare-fun tp!33171 () Bool)

(assert (=> mapNonEmpty!17052 (= mapRes!17052 (and tp!33171 e!243984))))

(declare-fun mapKey!17052 () (_ BitVec 32))

(declare-fun mapRest!17052 () (Array (_ BitVec 32) ValueCell!4800))

(declare-fun mapValue!17052 () ValueCell!4800)

(assert (=> mapNonEmpty!17052 (= (arr!11663 _values!549) (store mapRest!17052 mapKey!17052 mapValue!17052))))

(declare-fun b!405929 () Bool)

(declare-fun res!234488 () Bool)

(assert (=> b!405929 (=> (not res!234488) (not e!243982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405929 (= res!234488 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17052 () Bool)

(assert (=> mapIsEmpty!17052 mapRes!17052))

(declare-fun b!405930 () Bool)

(declare-fun res!234490 () Bool)

(assert (=> b!405930 (=> (not res!234490) (not e!243982))))

(assert (=> b!405930 (= res!234490 (or (= (select (arr!11662 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11662 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405931 () Bool)

(declare-fun e!243981 () Bool)

(assert (=> b!405931 (= e!243981 false)))

(declare-fun lt!188402 () Bool)

(declare-fun lt!188403 () array!24431)

(declare-datatypes ((List!6755 0))(
  ( (Nil!6752) (Cons!6751 (h!7607 (_ BitVec 64)) (t!11937 List!6755)) )
))
(declare-fun arrayNoDuplicates!0 (array!24431 (_ BitVec 32) List!6755) Bool)

(assert (=> b!405931 (= lt!188402 (arrayNoDuplicates!0 lt!188403 #b00000000000000000000000000000000 Nil!6752))))

(declare-fun b!405932 () Bool)

(declare-fun res!234492 () Bool)

(assert (=> b!405932 (=> (not res!234492) (not e!243982))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405932 (= res!234492 (and (= (size!12015 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12014 _keys!709) (size!12015 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405933 () Bool)

(assert (=> b!405933 (= e!243983 (and e!243980 mapRes!17052))))

(declare-fun condMapEmpty!17052 () Bool)

(declare-fun mapDefault!17052 () ValueCell!4800)

(assert (=> b!405933 (= condMapEmpty!17052 (= (arr!11663 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4800)) mapDefault!17052)))))

(declare-fun b!405934 () Bool)

(declare-fun res!234485 () Bool)

(assert (=> b!405934 (=> (not res!234485) (not e!243982))))

(assert (=> b!405934 (= res!234485 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6752))))

(declare-fun b!405935 () Bool)

(assert (=> b!405935 (= e!243982 e!243981)))

(declare-fun res!234489 () Bool)

(assert (=> b!405935 (=> (not res!234489) (not e!243981))))

(assert (=> b!405935 (= res!234489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188403 mask!1025))))

(assert (=> b!405935 (= lt!188403 (array!24432 (store (arr!11662 _keys!709) i!563 k0!794) (size!12014 _keys!709)))))

(assert (= (and start!38876 res!234487) b!405925))

(assert (= (and b!405925 res!234483) b!405932))

(assert (= (and b!405932 res!234492) b!405924))

(assert (= (and b!405924 res!234486) b!405934))

(assert (= (and b!405934 res!234485) b!405927))

(assert (= (and b!405927 res!234484) b!405929))

(assert (= (and b!405929 res!234488) b!405930))

(assert (= (and b!405930 res!234490) b!405923))

(assert (= (and b!405923 res!234491) b!405935))

(assert (= (and b!405935 res!234489) b!405931))

(assert (= (and b!405933 condMapEmpty!17052) mapIsEmpty!17052))

(assert (= (and b!405933 (not condMapEmpty!17052)) mapNonEmpty!17052))

(get-info :version)

(assert (= (and mapNonEmpty!17052 ((_ is ValueCellFull!4800) mapValue!17052)) b!405928))

(assert (= (and b!405933 ((_ is ValueCellFull!4800) mapDefault!17052)) b!405926))

(assert (= start!38876 b!405933))

(declare-fun m!398157 () Bool)

(assert (=> b!405925 m!398157))

(declare-fun m!398159 () Bool)

(assert (=> b!405930 m!398159))

(declare-fun m!398161 () Bool)

(assert (=> b!405923 m!398161))

(declare-fun m!398163 () Bool)

(assert (=> b!405931 m!398163))

(declare-fun m!398165 () Bool)

(assert (=> b!405935 m!398165))

(declare-fun m!398167 () Bool)

(assert (=> b!405935 m!398167))

(declare-fun m!398169 () Bool)

(assert (=> b!405929 m!398169))

(declare-fun m!398171 () Bool)

(assert (=> start!38876 m!398171))

(declare-fun m!398173 () Bool)

(assert (=> start!38876 m!398173))

(declare-fun m!398175 () Bool)

(assert (=> mapNonEmpty!17052 m!398175))

(declare-fun m!398177 () Bool)

(assert (=> b!405924 m!398177))

(declare-fun m!398179 () Bool)

(assert (=> b!405934 m!398179))

(check-sat (not b!405925) (not b!405923) (not b!405924) (not mapNonEmpty!17052) tp_is_empty!10287 (not b!405935) (not b!405934) (not b!405931) (not b!405929) (not start!38876))
(check-sat)
